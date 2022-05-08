//
//  ContentView.swift
//  HpWiki
//
//  Created by Besmir Kadrii on 06.05.22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var charsModel = CharactersModel()
    
    var body: some View {
        VStack {
            Text("HP Wiki")
                .font(.title)
            NavigationView {
                List(charsModel.chars) { char in
                    NavigationLink(destination: CharacterDetailView(char: char)) {
                      Text(char.name)
                    }
                }
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
