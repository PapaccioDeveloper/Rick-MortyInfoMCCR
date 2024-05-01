//
//  ViewModel.swift
//  RickAndMortyCharacter
//
//  Created by Carlos Chica on 01/05/2024.
//

import Foundation

struct CharacterViewModel: Equatable ,Identifiable { 
    let id: Int
    let name: String
    let image: URL?
}
