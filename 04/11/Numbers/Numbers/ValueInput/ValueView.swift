//
//  ValueView.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/5/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ValueView: View {
    @RoundedTo(1) var value: Double = 0
    
    var body: some View {
        return Text(value.description)
            .modifier(ValueModifier())
    }
}

struct ValueView_Previews: PreviewProvider {
    static var previews: some View {
        ValueView(value: 2.0)
    }
}
