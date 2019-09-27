//
//  Head.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/24/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct Head: View {
    var value: Double
    
    var color: Color {
        Color(red: (4 - value)/2, green: value/2, blue: 0)
    }
    
    var body: some View {
        Circle()
            .foregroundColor(color)
    }
}

struct Head_Previews: PreviewProvider {
    static var previews: some View {
        Head(value: 2.0)
    }
}
