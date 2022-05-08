//
//  ContentView.swift
//  HpWiki
//
//  Created by Besmir Kadrii on 06.05.22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var charsModel = CharactersModel()
    @State var searchQuery = ""
    @State var filteredChars: [Character] = []
    
    
    var body: some View {
        VStack {
            Text("HP Wiki")
                .font(.title)
            NavigationView {
                List(getChars(chars: filteredChars)) { char in
                    NavigationLink(destination: CharacterDetailView(char: char)) {
                      Text(char.name)
                    }
                }
            }
            .searchable(text: $searchQuery, prompt: "Search by Character Name")
            .onChange(of: searchQuery) { _ in
                filterChars()
            }
            .onSubmit(of: .search) {
                filterChars()
            }

        }
        
    }
    
    func filterChars() {
        if searchQuery.isEmpty {
            filteredChars = charsModel.chars
        } else {
            // filter the chars by name according to the search query. Ignore case sensitivity when filtering the chars
            filteredChars = charsModel.chars.filter {
                $0.name
                    .localizedCaseInsensitiveContains(searchQuery)
            }
        }
    }
    
    func getChars(chars: [Character]) -> [Character] {
        if chars.isEmpty {
            return charsModel.chars
        } else {
            return chars
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
