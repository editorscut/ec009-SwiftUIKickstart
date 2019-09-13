//
//  ValueSlider.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/5/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ValueSlider: View {
    @Binding var value: Double
    
    var body: some View {
        Slider(value: $value,
               in: 0.0 ... 4.0,
               step: 0.0001){sliderIsEngaged in
                if !sliderIsEngaged {
                    ratings.value = self.value
                }
        }
    }
}

struct ValueSlider_Previews: PreviewProvider {
    static var previews: some View {
        ValueSlider(value: .constant(2.0))
    }
}
