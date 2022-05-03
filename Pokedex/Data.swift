//
//  Data.swift
//  Pokedex
//
//  Created by Lais Godinho on 02/05/22.
//

import SwiftUI

class Api {
  func asyncGetPokemon(name: String) async throws -> [Pokemon] {
    
    guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(name)") else { fatalError("missing url") }
    
    let (data, _) = try await URLSession.shared.data(from: url)
    
    let pokemons = try JSONDecoder().decode(Pokemon.self, from: data)
    
    return [pokemons]
  }
  
  func asyncGetPokemonList() async throws -> [PokemonList] {
    guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon") else { fatalError("missing url") }
    
    let (data, _) = try await URLSession.shared.data(from: url)
    
    let pokemonList = try JSONDecoder().decode(PokemonList.self, from: data)

    return [pokemonList]
  }
}
