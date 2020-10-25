//
//  CharacterViewModel.swift
//  SchwiftyPagination
//
//  Created by Darkhonbek Mamataliev on 10/21/20.
//

import Foundation

protocol CharacterListViewModelProtocol: AnyObject {
    var characters: [Specie] { get set }
}

class CharacterListViewModel: CharacterListViewModelProtocol {
    var characters: [Specie] {
        get {
            // ...
            return []
        }

        set {
            // ...
        }
    }

    init(_ characterModel: [Specie]) {
        characters = characterModel
    }
}

protocol CharacterCellViewModelProtocol: AnyObject {
    var name: String { get }
    var specie: String { get }
}

class CharacterCellViewModel: CharacterCellViewModelProtocol {
    let name: String
    let specie: String

    init(_ character: Specie) {
        name = character.name
        specie = character.specie
    }
}
