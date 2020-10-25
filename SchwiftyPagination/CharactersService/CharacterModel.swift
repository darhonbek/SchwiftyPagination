//
//  CharacterModel.swift
//  SchwiftyPagination
//
//  Created by Darkhonbek Mamataliev on 10/21/20.
//

public struct CharacterModel {
    let name: String
    let specie: String // enum
}


extension CharacterModel {
    init(_ dto: CharacterDTO) {
        name = dto.name
        specie = dto.specie
    }
}
