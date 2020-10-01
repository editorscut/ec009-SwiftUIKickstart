//
//  ContentView.swift
//  Symbols
//
//  Created by Daniel Steinberg on 9/27/20.
//

import SwiftUI

struct ContentView: View {
  let columns = [GridItem(.adaptive(minimum: 60))]
  
  var body: some View {
    ScrollView {
      LazyVGrid(columns: columns,
                spacing: 20){
        ForEach(symbols){symbol in
          Image(systemName: symbol.name)
            .resizable()
            .scaledToFit()
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

