//
//  Character.swift
//  HpWiki
//
//  Created by Besmir Kadrii on 07.05.22.
//

import SwiftUI

struct Character: Decodable, Identifiable {
    var id: String {name}
    let actor: String
    let alive: Bool
    let alternate_actors: [String]
    let alternate_names: [String]
    let ancestry: String
    let dateOfBirth: String
    let eyeColour: String
    let gender: String
    let hairColour: String
    let hogwartsStaff: Bool
    let hogwartsStudent: Bool
    let house: String
    let image: String
    let name: String
    let patronus: String
    let species: String
    var wand: String {"test"}// figure out how to parse nested json object
    let wizard: Bool
    var yearOfBirth: Int {1}

}

struct Wand: Decodable {
    let wood: String
    let core: String
    let length: Int
}


