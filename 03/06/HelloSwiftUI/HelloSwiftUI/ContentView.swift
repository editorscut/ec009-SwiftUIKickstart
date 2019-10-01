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
    @State private var buttonIsDisabled = false
    
    var body: some View {
        VStack {
            GreetingLabel(greeting: greeting)
                .padding()
            Button("Press Here"){
                self.greet()
            }.disabled(buttonIsDisabled)
        }
    }
    
    private func greet() {
        buttonIsDisabled.toggle()
        greeting = "Hello, World!"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
