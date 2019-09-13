//
//  ContentView.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/5/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            ValueInputView()
                .tabItem{
                    VStack {
                        Text("Input")
                        Image(systemName: "arrow.right.arrow.left")
                    }
            }
            LastRecordedValue()
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
