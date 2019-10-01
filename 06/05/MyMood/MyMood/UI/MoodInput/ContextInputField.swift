//
//  ContextInputField.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/17/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ContextInputField: View {
    @Binding var context: String
    
    var body: some View {
        TextField("What's going on?",
                  text: $context)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .lineLimit(1)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
    }
}

struct ContextInputField_Previews: PreviewProvider {
    static var previews: some View {
        ContextInputField(context: .constant("Nothing"))
    }
}
