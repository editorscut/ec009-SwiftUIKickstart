//
//  ContentView.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/5/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let rating = Rating()
    
    var body: some View {
        TabView {
            ValueInputView(rating: rating)
                .tabItem{
                    VStack {
                        Text("Input")
                        Image(systemName: "arrow.right.arrow.left")
                    }
            }
            LastRecordedValue(rating: rating)
                .tabItem{
                    VStack {
                        Text("Previous")
                        Image(systemName: "folder")
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
