//
//  PokemonView.swift
//  Pokedex
//
//  Created by Lais Godinho on 02/05/22.
//

import SwiftUI

struct PokemonView: View {
  
    let pokemon: String
  
    var body: some View {
      Image(pokemon)
        .resizable()
        .scaledToFit()
        .frame(height: 100)
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
      PokemonView(pokemon: "medium")
    }
}
