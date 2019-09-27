//
//  FaceView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/24/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct FaceView: View {
    var value: Double = 0

    var body: some View {
        return Text(value.toOnePlace)
    }
}

struct FaceView_Previews: PreviewProvider {
    static var previews: some View {
        FaceView()
    }
}
