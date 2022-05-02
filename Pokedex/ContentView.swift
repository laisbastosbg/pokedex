//
//  ContentView.swift
//  Pokedex
//
//  Created by Lais Godinho on 02/05/22.
//

import SwiftUI

struct ContentView: View {
  @State var posts: [Post] = []
  
  var body: some View {
    VStack {
      List(posts) { post in
        Text("hello")
      }
      .onAppear {
        Api().getPosts { (posts) in
          self.posts = posts
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewInterfaceOrientation(.portrait)
  }
}
