//
//  CharacterEntitie.swift
//  RickAndMortyCharacter
//
//  Created by Carlos Chica on 01/05/2024.
//

import Foundation

struct CharacterModel: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String?
    let gender: String
    let image: String    
}





