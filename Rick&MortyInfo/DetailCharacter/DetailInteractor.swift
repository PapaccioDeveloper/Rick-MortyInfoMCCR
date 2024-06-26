//
//  DetailInteractor.swift
//  RickAndMortyCharacter
//
//  Created by Carlos Chica on 01/05/2024.
//

import Foundation

protocol DetailInteractable: AnyObject {
    func getDetailCharacter(withId id: String) async -> DetailCharacterEntity
}


class DetailInteractor: DetailInteractable {
    
    let networkManager: NetworkManager
    
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    func getDetailCharacter(withId id: String) async -> DetailCharacterEntity {
        let url = Endpoint.getCharacter + "/\(id)"
        let result: Result<DetailCharacterEntity, Error> = await networkManager.request(url: url)
        switch result {
        case .success(let detailCharacterEntity):
            return detailCharacterEntity
        case .failure(let error as AppError):
                switch error {
                case .notFound:
                    fatalError("Error: \(error.localizedDescription)")
                default:
                    fatalError("Error: \(error.localizedDescription)")
                }
            case .failure(let error):
                fatalError("Error: \(error.localizedDescription)")
            }
    }
}
