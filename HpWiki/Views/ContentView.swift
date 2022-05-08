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
            Text("Harry Potter Wiki")
                .font(.title)
            List(charsModel.chars) { char in
                    Text(char.name)
                            .font(.title2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
