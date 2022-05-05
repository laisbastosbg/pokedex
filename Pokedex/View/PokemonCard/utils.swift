//
//  utils.swift
//  Pokedex
//
//  Created by Lais Godinho on 04/05/22.
//

import SwiftUI

func getBackgroundColor(_ type: String) -> String {
  switch(type) {
  case "bug":
    return "bugBackground"
  case "dark":
    return "darkBackground"
  case "dragon":
    return "dragonBackground"
  case "electric":
    return "electricBackground"
  case "fairy":
    return "fairyBackground"
  case "fighting":
    return "fightingBackground"
  case "fire":
    return "fireBackground"
  case "flying":
    return "flyingBackground"
  case "ghost":
    return "ghostBackground"
  case "grass":
    return "grassBackground"
  case "ground":
    return "groundBackground"
  case "ice":
    return "iceBackground"
  case "normal":
    return "normalBackground"
  case "poison":
    return "poisonBackground"
  case "psychic":
    return "psychicBackground"
  case "rock":
    return "rockBackground"
  case "steel":
    return "steelBackground"
  case "water":
    return "waterBackground"
  default:
    return "bugBackground"
  }
}

func getColor(_ type: String) -> String {
  switch(type) {
  case "bug":
    return "bug"
  case "dark":
    return "dark"
  case "dragon":
    return "dragon"
  case "electric":
    return "electric"
  case "fairy":
    return "fairy"
  case "fighting":
    return "fighting"
  case "fire":
    return "fire"
  case "flying":
    return "flying"
  case "ghost":
    return "ghost"
  case "grass":
    return "grass"
  case "ground":
    return "ground"
  case "ice":
    return "ice"
  case "normal":
    return "normal"
  case "poison":
    return "poison"
  case "psychic":
    return "psychic"
  case "rock":
    return "rock"
  case "steel":
    return "steel"
  case "water":
    return "water"
  default:
    return "bug"
  }
}

func getBadgeType(_ type: String) -> BadgeType {
  switch(type) {
  case "bug":
    return .bug
  case "dark":
    return .dark
  case "dragon":
    return .dragon
  case "electric":
    return .electric
  case "fairy":
    return .fairy
  case "fighting":
    return .fighting
  case "fire":
    return .fire
  case "flying":
    return .flying
  case "ghost":
    return .ghost
  case "grass":
    return .grass
  case "ground":
    return .ground
  case "ice":
    return .ice
  case "normal":
    return .normal
  case "poison":
    return .poison
  case "psychic":
    return .psychic
  case "rock":
    return .rock
  case "steel":
    return .steel
  case "water":
    return .water
  default:
    return .bug
  }
}
