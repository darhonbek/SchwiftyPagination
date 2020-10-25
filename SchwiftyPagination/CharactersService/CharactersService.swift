//
//  CharactersService.swift
//  SchwiftyPagination
//
//  Created by Darkhonbek Mamataliev on 10/21/20.
//

import Foundation

protocol RickServiceProtocol {
    func getCharacters(urlString: String)
}

class RickService: RickServiceProtocol {
    func getCharacters(urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            print(String(data: data, encoding: .utf8)!)

            do {
                let decoder = JSONDecoder()
                let characters = try decoder.decode(CharactersDTO.self, from: data)

                characters.results.forEach {
                    print($0.name)
                }
            } catch {
                print("Parsing failed")
            }
        }.resume()
    }
}
