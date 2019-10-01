//
//  GreetingButton.swift
//  HelloSwiftUI
//
//  Created by Daniel Steinberg on 9/5/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct GreetingButton: View {
    @State private var buttonIsDisabled = false
    @Binding var greeting: String
    
    var body: some View {
        Button("Press Here"){
            self.greet()
        }.disabled(buttonIsDisabled)
    }
    
    private func greet() {
        buttonIsDisabled.toggle()
        greeting = "Hello, World!"
    }
}

struct GreetingButton_Previews: PreviewProvider {
    static var previews: some View {
        GreetingButton(greeting: .constant("Hey"))
    }
}
