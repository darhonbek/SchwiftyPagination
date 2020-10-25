//
//  CharacterDTO.swift
//  SchwiftyPagination
//
//  Created by Darkhonbek Mamataliev on 10/25/20.
//

struct CharacterDTO: Decodable {
    let name: String
    let species: String
}

struct CharactersDTO: Decodable {
    let results: [CharacterDTO]
}

