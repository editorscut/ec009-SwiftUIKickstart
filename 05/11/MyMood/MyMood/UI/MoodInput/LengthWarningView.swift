//
//  LengthWarningView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/19/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct LengthWarningView: View {
    let tooLong: Bool
    
    var body: some View {
        Text("(Too many characters)")
            .foregroundColor(tooLong ? .red : .secondary)
            .padding(.bottom)
    }
}

struct LengthWarningView_Previews: PreviewProvider {
    static var previews: some View {
        LengthWarningView(tooLong: true)
    }
}
