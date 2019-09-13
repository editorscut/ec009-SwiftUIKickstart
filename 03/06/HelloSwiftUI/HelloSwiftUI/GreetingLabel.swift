//
//  GreetingLabel.swift
//  HelloSwiftUI
//
//  Created by Daniel Steinberg on 9/5/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct GreetingLabel: View {
    let greeting: String
    
    var body: some View {
        Text(greeting)
            .font(.title)
            .foregroundColor(.secondary)
    }
}

struct GreetingLabel_Previews: PreviewProvider {
    static var previews: some View {
        GreetingLabel(greeting: "Hey")
    }
}
