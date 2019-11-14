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
        ZStack {
            Head(value: value)
            Eyes().background(Color.purple)
        }
    }
}

struct FaceView_Previews: PreviewProvider {
    static var previews: some View {
        FaceView(value: 2.0)
    }
}
