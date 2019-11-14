//
//  LengthWarningView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/19/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct LengthWarningView: View {
    
    var body: some View {
        Text("(Must be less than 30 characters)")
            .foregroundColor(.red)
            .padding(.bottom)
    }
}

struct LengthWarningView_Previews: PreviewProvider {
    static var previews: some View {
        LengthWarningView()
    }
}
