//
//  RMResponseEntity.swift
//  RickAndMortyCharacter
//
//  Created by Carlos Chica on 01/05/2024.
//

import Foundation

struct CharacterResponseEntity: Decodable {
    let info: PageInfo
    let results:[CharacterModel]
    
    struct PageInfo: Decodable {
           let count: Int
           let pages: Int
           let next: String?
           let prev: String?
       }
 
    
}
