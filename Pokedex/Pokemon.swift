//
//  Pokemon.swift
//  Pokedex
//
//  Created by Lais Godinho on 03/05/22.
//

import SwiftUI

struct Ability: Codable {
  var name: String
  var url: String
}

struct AbilityItem: Codable {
  var ability: Ability
  var is_hidden: Bool
  var slot: Int
}

struct Form: Codable {
  var name: String
  var url: String
}

struct Version: Codable {
  var name: String
  var url: String
}

struct GameIndexItem: Codable {
  var game_index: Int
  var version: Version
}

struct Item: Codable {
  var name: String
  var url: String
}

struct VersionDetailsItem: Codable {
  var rarity: Int
  var version: Version
}

struct HeldItemsItem: Codable {
  var item: Item
  var version_details: [VersionDetailsItem]
}

struct Move: Codable {
  var name: String
  var url: String
}

struct MoveLearnMethod: Codable {
  var name: String
  var url: String
}

struct VersionGroup: Codable {
  var name: String
  var url: String
}

struct VersionGroupDetails: Codable {
  var level_learned_at: Int
  var move_learn_method: [MoveLearnMethod]
  var version_group: [VersionGroup]
}

struct MoveItem: Codable {
  var move: Move
  var version_group_details: [VersionGroupDetails]
}

struct Species: Codable {
  var name: String
  var url: String
}

struct OfficialArtwork: Codable {
  var front_default: String
}

struct Other: Codable {
  var official_artwork: OfficialArtwork

  enum CodingKeys: String, CodingKey {
    case official_artwork = "official-artwork"
  }

}

struct Sprite: Codable {
  var other: Other
}

struct Stat: Codable {
  var name: String
  var url: String
}

struct StatItem: Codable {
  var base_stat: Int
  var effort: Int
  var stat: Stat
}

struct Type: Codable {
  var name: String
  var url: String
}

struct TypeItem: Codable {
  var slot: Int
  var type: Type
}

struct Pokemon: Codable, Identifiable {
  let id = UUID()
  var name: String
//  var abilities: [AbilityItem]
//  var base_experience: Int
//  var forms: [Form]
//  var height: Float
//  var is_default: Bool
//  var location_area_encounters: String
//  var moves: [MoveItem]
//  var name: String
//  var order: Int
////  var past_types
//  var species: Species
  var sprites: Sprite
//  var stats: [StatItem]
//  var types: [TypeItem]
//  var weight: Int
}


struct Result: Codable, Identifiable {
  let id = UUID()
  var name: String
  var url: String
}

struct Pokemons: Codable, Identifiable {
  let id = UUID()
  var count: Int
  var results: [Result]
}
