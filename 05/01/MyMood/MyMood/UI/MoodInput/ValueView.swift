//
//  ValueView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/15/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ValueView: View {
    var value: Double = 0

    var body: some View {
        return Text(value.toOnePlace)
    }
}

struct ValueView_Previews: PreviewProvider {
    static var previews: some View {
        ValueView(value: 2.0)
    }
}

