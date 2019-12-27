//
//  LastRecordedValue.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/12/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct LastRecordedValue: View {
    @ObservedObject private(set) var observedRating = rating
    
    var body: some View {
        Text("Last Reading: \(observedRating.value)")
            .foregroundColor(.secondary)
            .padding()
    }
}

struct LastRecordedValue_Previews: PreviewProvider {
    static var previews: some View {
        LastRecordedValue()
    }
}
