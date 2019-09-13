//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Daniel Steinberg on 8/28/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var greeting = "Hello"
    
    var body: some View {
        VStack {
            Text(greeting)
                .font(.title)
                .foregroundColor(.secondary)
                .padding()
            Button(action: greet){
                Text("Press Here")
            }
        }
    }
    
    private func greet() {
        greeting = "Hello, World!"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
