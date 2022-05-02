//
//  BadgeType.swift
//  Pokedex
//
//  Created by Lais Godinho on 02/05/22.
//

import SwiftUI


enum BadgeType {
  
  case bug
  case dark
  case dragon
  case electric
  case fairy
  case fighting
  case fire
  case flying
  case ghost
  case grass
  case ground
  case ice
  case normal
  case poison
  case psychic
  case rock
  case steel
  case water
  
  var label: String {
    switch self {
    case .bug:
      return "Bug"
    case .dark:
      return "Dark"
    case .dragon:
      return "Dragon"
    case .electric:
      return "Electric"
    case .fairy:
      return "Fairy"
    case .fighting:
      return "Fighting"
    case .fire:
      return "Fire"
    case .flying:
      return "Flying"
    case .ghost:
      return "Ghost"
    case .grass:
      return "Grass"
    case .ground:
      return "Ground"
    case .ice:
      return "Ice"
    case .normal:
      return "Normal"
    case .poison:
      return "Poison"
    case .psychic:
      return "Psychic"
    case .rock:
      return "Rock"
    case .steel:
      return "Steel"
    case .water:
      return "Water"
    }
  }
  
  var icon: String {
    switch self {
    case .bug:
      return "bug"
    case .dark:
      return "dark"
    case .dragon:
      return "dragon"
    case .electric:
      return "electric"
    case .fairy:
      return "fairy"
    case .fighting:
      return "fighting"
    case .fire:
      return "fire"
    case .flying:
      return "flying"
    case .ghost:
      return "ghost"
    case .grass:
      return "grass"
    case .ground:
      return "ground"
    case .ice:
      return "ice"
    case .normal:
      return "normal"
    case .poison:
      return "poison"
    case .psychic:
      return "psychic"
    case .rock:
      return "rock"
    case .steel:
      return "steel"
    case .water:
      return "water"
    }
  }
  
  var color: Color {
    switch self {
    case .bug:
      return Color(red: 140/255, green: 178/255, blue: 48/255)
    case .dark:
      return Color(red: 88/255, green: 87/255, blue: 95/255)
    case .dragon:
      return Color(red: 15/255, green: 106/255, blue: 192/255)
    case .electric:
      return Color(red: 238/255, green: 213/255, blue: 53/255)
    case .fairy:
      return Color(red: 237/255, green: 110/255, blue: 199/255)
    case .fighting:
      return Color(red: 208/255, green: 65/255, blue: 100/255)
    case .fire:
      return Color(red: 253/255, green: 125/255, blue: 36/255)
    case .flying:
      return Color(red: 116/255, green: 143/255, blue: 201/255)
    case .ghost:
      return Color(red: 85/255, green: 106/255, blue: 174/255)
    case .grass:
      return Color(red: 98/255, green: 185/255, blue: 87/255)
    case .ground:
      return Color(red: 221/255, green: 119/255, blue: 72/255)
    case .ice:
      return Color(red: 97/255, green: 206/255, blue: 192/255)
    case .normal:
      return Color(red: 157/255, green: 160/255, blue: 170/255)
    case .poison:
      return Color(red: 165/255, green: 82/255, blue: 204/255)
    case .psychic:
      return Color(red: 234/255, green: 93/255, blue: 96/255)
    case .rock:
      return Color(red: 186/255, green: 171/255, blue: 130/255)
    case .steel:
      return Color(red: 65/255, green: 125/255, blue: 154/255)
    case .water:
      return Color(red: 74/255, green: 144/255, blue: 218/255)
    }
  }
  
  
}

struct _BaseBadge: View {
  
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

struct BadgeType_Previews: PreviewProvider {
  static var previews: some View {
    _BaseBadge(type: .dark)
      .padding()
      .previewLayout(.sizeThatFits)
  }
}
