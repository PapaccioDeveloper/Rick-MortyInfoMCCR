//
//  mapperCharacterViewModel.swift
//  RickAndMortyCharacter
//
// Created by Carlos Chica on 01/05/2024.
//

import Foundation

struct MapperCharacterViewModel {
    func map(entity: CharacterModel) -> CharacterViewModel {
        CharacterViewModel(id: entity.id, name: entity.name, image: URL(string: entity.image))
    }
}
