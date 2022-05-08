//
//  CharacterDetailView.swift
//  HpWiki
//
//  Created by Besmir Kadrii on 08.05.22.
//

import SwiftUI

struct CharacterDetailView: View {
  var char: Character

  var body: some View {
      VStack {
      /*RecipeImage(imageURL: recipe.imageURL)
        .padding([.leading, .trailing])*/
        Text(char.name)
            .font(.largeTitle)
        Divider()
        VStack(alignment: .leading){
            HStack {
                VStack(alignment: .leading) {
                    Text("Name: ")
                    Text("House: ")
                    Text("Species: ")
                    Text("Date of Birth: ")
                    Text("Alive: ")
                    Text("Ancestry: ")
                    Text("Patronus: ")
                }
                
                VStack(alignment: .leading) {
                    Text(char.name)
                    Text(char.house)
                    Text(char.species)
                    Text(char.dateOfBirth)
                    Text(char.alive == true ? "Yes" : "No")
                    Text(char.ancestry)
                    Text(char.patronus)
                }
            }
        }
        
        
    }
  }
}

struct CharacterDetailView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      CharacterDetailView(char: CharactersModel().chars[0])
        .previewDevice("iPhone 12 Pro")

      CharacterDetailView(char: CharactersModel().chars[0])
        .previewDevice("iPad Pro (9.7-inch)")
    }
  }
}

