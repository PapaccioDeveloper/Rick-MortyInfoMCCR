//
//  DetailCharacterEntity.swift
//  RickAndMortyCharacter
//
//  Created by Carlos Chica on 01/05/2024.
//

import Foundation

struct DetailCharacterEntity: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
    
}
