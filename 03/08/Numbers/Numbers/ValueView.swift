//
//  ValueView.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/5/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ValueView: View {
    let value: Double
    
    var body: some View {
        Text(value.description)
    }
}

struct ValueView_Previews: PreviewProvider {
    static var previews: some View {
        ValueView(value: 2.0)
    }
}
