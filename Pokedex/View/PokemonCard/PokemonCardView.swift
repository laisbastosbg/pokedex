//
//  PokemonCardView.swift
//  Pokedex
//
//  Created by Lais Godinho on 04/05/22.
//

import SwiftUI

struct PokemonCardView: View {
  let id: String
  let name: String
  let types: [String]
  let image: String
  
  var body: some View {
    ZStack {
      HStack {
        CardInfoView(id: id, name: name, types: types)
        PokeballView()
      }
      
      .background(Color(UIColor(named: getBackgroundColor(types[0]))!))
      .cornerRadius(10)
      
      AsyncImage(url: URL(string: image)) { image in
        image.resizable()
      } placeholder: {
        ProgressView()
      }
      .frame(width: 155, height: 155)
      .offset(x: 80, y: -30)
    }
    
  }
}

struct PokemonCardView_Previews: PreviewProvider {
  static var previews: some View {
    PokemonCardView(
      id: "#001",
      name: "Bulbasaur",
      types: ["grass", "poison"],
      image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png"
    )
  }
}
