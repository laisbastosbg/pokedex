//
//  ContentView.swift
//  Pokedex
//
//  Created by Lais Godinho on 02/05/22.
//

import SwiftUI



struct ContentView: View {
@State var pokemons: [Pokemon] = []
  @State var pokemonList: [PokemonList] = []
  @State var results: [Result] = []
  
  var body: some View {
    VStack {
      List(results) { result in

        Text(result.name)
      }
      .onAppear {
        Task {
          do {
          let response = try await Api().asyncGetPokemonList()
           self.pokemonList = response
            self.results = response[0].results
          } catch {
            print("Request failed with error: \(error)")
          }
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
