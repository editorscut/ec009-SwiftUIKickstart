//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Daniel Steinberg on 9/7/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        print("Executing body")
        return Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
