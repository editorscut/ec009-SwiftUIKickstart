//
//  ValueSlider.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/15/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//
import SwiftUI

struct ValueSlider: View {
    @Binding var value: Double
    
    var body: some View {
        Slider(value: $value,
               in: 0.0 ... 4.0,
               step: 0.1)
            .padding()
    }
}

struct ValueSlider_Previews: PreviewProvider {
    static var previews: some View {
        ValueSlider(value: .constant(2.0))
    }
}
