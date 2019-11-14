//
//  FaceView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 11/12/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct FaceView: View {
    let value: Double
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Head(value: self.value)
                Eyes(side: self.minDimension(for: proxy))
            }
        }
    }
    
    func minDimension(for proxy: GeometryProxy) -> CGFloat {
        let size = proxy.frame(in: .local).size
        return min(size.width, size.height)
    }
}

struct FaceView_Previews: PreviewProvider {
    static var previews: some View {
        FaceView(value: 2.0)
    }
}
