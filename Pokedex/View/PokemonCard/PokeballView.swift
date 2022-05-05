//
//  PokeballView.swift
//  Pokedex
//
//  Created by Lais Godinho on 05/05/22.
//

import SwiftUI

struct PokeballView: View {
    var body: some View {
      LinearGradient(
        colors: [.white.opacity(0.5), .white.opacity(0.1)],
        startPoint: .top,
        endPoint: .bottom
      )
      .frame(width: 175, height:155)
      .mask {
        Image("pokeball")
          .renderingMode(.template)
          .resizable()
          .frame(width: 160, height: 160)
          .offset(x: 40)
      }
    }
}

struct PokeballView_Previews: PreviewProvider {
    static var previews: some View {
        PokeballView()
        .background(Color(.gray))
    }
}
