//
//  Eyes.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/25/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct Eyes: View {
    var body: some View {
        HStack {
            Circle()
                .scale(0.33)
            Spacer()
            Circle()
                .scale(0.33)
        }
        .scaleEffect(0.75,
                     anchor: .center)
        .offset(x: 0, y: -50)
    }
}

struct Eyes_Previews: PreviewProvider {
    static var previews: some View {
        Eyes()
    }
}
