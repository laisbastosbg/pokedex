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
      return Color(UIColor(named: "bug")!)
    case .dark:
      return Color(UIColor(named: "dark")!)
    case .dragon:
      return Color(UIColor(named: "dragon")!)
    case .electric:
      return Color(UIColor(named: "electric")!)
    case .fairy:
      return Color(UIColor(named: "fairy")!)
    case .fighting:
      return Color(UIColor(named: "fighting")!)
    case .fire:
      return Color(UIColor(named: "fire")!)
    case .flying:
      return Color(UIColor(named: "flying")!)
    case .ghost:
      return Color(UIColor(named: "ghost")!)
    case .grass:
      return Color(UIColor(named: "grass")!)
    case .ground:
      return Color(UIColor(named: "ground")!)
    case .ice:
      return Color(UIColor(named: "ice")!)
    case .normal:
      return Color(UIColor(named: "normal")!)
    case .poison:
      return Color(UIColor(named: "poison")!)
    case .psychic:
      return Color(UIColor(named: "psychic")!)
    case .rock:
      return Color(UIColor(named: "rock")!)
    case .steel:
      return Color(UIColor(named: "steel")!)
    case .water:
      return Color(UIColor(named: "water")!)
    }
  }
}
