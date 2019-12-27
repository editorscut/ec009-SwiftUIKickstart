//
//  ValueInputView.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/11/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ValueInputView: View {
    @State private var value = 2.0
    private let rating = Rating()
    
    var body: some View {
        VStack {
            ValueView(value: value)
            ValueSlider(value: $value,
                        rating: rating)
        }
    }
}

struct ValueInputView_Previews: PreviewProvider {
    static var previews: some View {
        ValueInputView()
    }
}
