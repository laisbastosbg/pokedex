//
//  Data.swift
//  Pokedex
//
//  Created by Lais Godinho on 02/05/22.
//

import SwiftUI

class Api {
  func getPokemon(name: String, completion: @escaping ([Pokemon]) -> ()) {
    guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(name)") else { return }
    
    URLSession.shared.dataTask(with: url) { data, _, _ in
      let pokemon = try! JSONDecoder().decode(Pokemon.self, from: data!)
      let pokemons = [pokemon]
      
      DispatchQueue.main.async {
        completion(pokemons)
      }
    }
    .resume()
  }
  
  func getPokemons(completion: @escaping ([Result]) -> ()) {
    guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon") else { return }
    
    URLSession.shared.dataTask(with: url) { data, _, _ in
      let pokemons = try! JSONDecoder().decode(Pokemons.self, from: data!)
      let pokemonsArray = [pokemons]
      let result = pokemons.results
      
      DispatchQueue.main.async {
        completion(result)
      }
    }
    .resume()
  }
}
