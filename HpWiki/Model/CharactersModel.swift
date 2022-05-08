//
//  CharactersModel.swift
//  HpWiki
//
//  Created by Besmir Kadrii on 07.05.22.
//

import Foundation

class CharactersModel: ObservableObject {
    @Published var chars = [Character]()

    init() {
        let url = URL(string: "http://hp-api.herokuapp.com/api/characters")!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let charsData = data {
                    let decodedData = try JSONDecoder().decode([Character].self, from: charsData)
                    DispatchQueue.main.async {
                        self.chars = decodedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
}
