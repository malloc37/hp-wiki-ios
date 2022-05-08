//
//  CharImage.swift
//  HpWiki
//
//  Created by Besmir Kadrii on 08.05.22.
//

import SwiftUI

struct CharImage: View {
  var imageURL: String

  var body: some View {
    AsyncImage(url: URL(string: imageURL)) { image in
      image
        .resizable()
        .scaledToFit()
        .cornerRadius(5)
    } placeholder: {
      ZStack {
        Image("rw-logo")
          .resizable()
          .scaledToFit()
        ProgressView()
      }
    }
    .frame(maxWidth: .infinity)
  }
}

struct CharImage_Previews: PreviewProvider {
  static var previews: some View {
    Group {
        CharImage(imageURL: CharactersModel().chars[0].image)
        .previewDevice("iPhone 12 Pro")

      CharImage(imageURL: CharactersModel().chars[0].image)
        .previewDevice("iPad Pro (9.7-inch)")
    }
  }
}
