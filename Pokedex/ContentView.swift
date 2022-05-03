//
//  ContentView.swift
//  Pokedex
//
//  Created by Lais Godinho on 02/05/22.
//

import SwiftUI

struct ContentView: View {
  @State var pokemons: [Pokemon] = []
  @State var allPokemons: [Pokemons] = []
  @State var results: [Result] = []
  
  var body: some View {
    VStack {
      List(pokemons) { pokemon in
        Text(pokemon.name)
        let string = pokemon.sprites.other.official_artwork.front_default
        AsyncImage(url: URL(string: string)) { image in
          image.resizable()
        } placeholder: {
          ProgressView()
        }
        .frame(width: 250, height: 250)
      }
      .onAppear {
        Api().getPokemon(name: "squirtle") { (pokemons) in
          self.pokemons = pokemons
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewInterfaceOrientation(.portrait)
  }
}
