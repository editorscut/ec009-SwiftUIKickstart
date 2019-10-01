//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Daniel Steinberg on 8/28/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello")
                .font(.title)
                .foregroundColor(.secondary)
                .padding()
            Button("Press Here"){
                self.printTapped()
            }
        }
    }
    
    private func printTapped() {
        print("Tapped")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
