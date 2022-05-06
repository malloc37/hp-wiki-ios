//
//  ContentView.swift
//  HpWiki
//
//  Created by Besmir Kadrii on 06.05.22.
//

import SwiftUI

struct ContentView: View {
    @State var chars: [Character] = []
    
    var body: some View {
        List(chars) { char in
            Text(char.name)
                    .font(.headline)
        }
            .onAppear {
                ApiCall().fetchData { (chars) in
                    self.chars = chars
                }
            }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
