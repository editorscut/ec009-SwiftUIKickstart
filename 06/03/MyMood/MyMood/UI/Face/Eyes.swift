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
                .foregroundColor(.black)
            Spacer()
            Circle()
                .foregroundColor(.black)
        }
    }
}

struct Eyes_Previews: PreviewProvider {
    static var previews: some View {
        Eyes()
    }
}
