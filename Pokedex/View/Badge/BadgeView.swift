//
//  BadgeView.swift
//  Pokedex
//
//  Created by Lais Godinho on 02/05/22.
//

import SwiftUI

struct BadgeView: View {
  
  let type: BadgeType
  
  var body: some View {
    HStack(
      spacing: 10
    ) {
      Image(type.icon)
        .resizable()
        .renderingMode(.template)
        .foregroundColor(.white)
        .scaledToFit()
        .frame(width: 15, height: 15)
      Text(type.label)
        .foregroundColor(.white)
    }
    .padding(5)
    .background(type.color)
    .cornerRadius(3)
    
  }
}

struct BadgeView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      BadgeView(
        type: .bug
      )
      .padding()
      .previewLayout(.sizeThatFits)
      
      BadgeView(
        type: .dark
      )
      .padding()
      .previewLayout(.sizeThatFits)
      
      BadgeView(
        type: .dragon
      )
      .padding()
      .previewLayout(.sizeThatFits)
      
      BadgeView(
        type: .electric
      )
      .padding()
      .previewLayout(.sizeThatFits)
      
      BadgeView(
        type: .fairy
      )
      .padding()
      .previewLayout(.sizeThatFits)
      
      BadgeView(
        type: .fighting
      )
      .padding()
      .previewLayout(.sizeThatFits)
      
      BadgeView(
        type: .fire
      )
      .padding()
      .previewLayout(.sizeThatFits)
      
      BadgeView(
        type: .flying
      )
      .padding()
      .previewLayout(.sizeThatFits)
      
      BadgeView(
        type: .ghost
      )
      .padding()
      .previewLayout(.sizeThatFits)
    }
  }
}
