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
    
    var body: some View {
        Circle()
            .foregroundColor(.yellow)
    }
}

struct Head_Previews: PreviewProvider {
    static var previews: some View {
        Head(value: 2.0)
    }
}
