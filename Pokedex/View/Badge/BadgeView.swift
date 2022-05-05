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
      spacing: 5
    ) {
      Image(type.icon)
        .resizable()
        .renderingMode(.template)
        .foregroundColor(.white)
        .scaledToFit()
        .frame(width: 10, height: 10)
      Text(type.label)
        .foregroundColor(.white)
        .font(.caption)
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
        type: .fairy
      )
      .padding()
      .previewLayout(.sizeThatFits)
    }
  }
}
