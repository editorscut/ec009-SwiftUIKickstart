//
//  Eyes.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/25/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct Eyes: View {
    let side: CGFloat
    
    var body: some View {
        HStack {
            Circle()
            Spacer()
            Circle()
        }
        .frame(width: side * 3 / 4,
               height: side / 12,
               alignment: .center)
        .offset(x: 0, y: -side / 8)
    }
}

struct Eyes_Previews: PreviewProvider {
    static var previews: some View {
        Eyes(side: 4.0)
    }
}
