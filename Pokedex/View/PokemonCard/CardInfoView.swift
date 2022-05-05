//
//  CardInfoView.swift
//  Pokedex
//
//  Created by Lais Godinho on 05/05/22.
//

import SwiftUI

struct CardInfoView: View {
  let id: String
  let name: String
  let types: [String]
  
    var body: some View {
      ZStack {
        
        LinearGradient(
          colors: [.white.opacity(0.25), .white.opacity(0.1), .white.opacity(0.05)],
          startPoint: .top,
          endPoint: .bottom
        )
        .frame(width: 100, height: 30, alignment: .top)
  //      .padding(.leading, 25)
        .mask {
          Image("6x3")
            .renderingMode(.template)
            .resizable()
        }
        VStack(alignment: .leading) {
          
          Text(id).foregroundColor(Color(UIColor(named: "darkGray")!))
          Text(name).foregroundColor(Color(.white)).font(.title)
          HStack {
            ForEach(Array(types.enumerated()), id: \.offset) { index, element in
              BadgeView(type: getBadgeType(element))
            }
            
          }
          .padding(.bottom, 15.0)
        }
        .padding(.leading, 15.0)
      }
      .frame(height: 155)
    }
}

struct CardInfoView_Previews: PreviewProvider {
    static var previews: some View {
      CardInfoView(id: "#001", name: "Bulbasaur", types: ["grass", "poison"])
        .background(Color(.gray))
    }
}
