//
//  ContentView.swift
//  Pokedex
//
//  Created by Lais Godinho on 02/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        Text("Bug")
            .padding()
      
          Text("Bug")
              .padding()
        PokemonView(pokemon: "medium")
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
