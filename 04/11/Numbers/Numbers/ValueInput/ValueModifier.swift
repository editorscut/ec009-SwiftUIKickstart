//
//  ValueModifier.swift
//  Numbers
//
//  Created by Daniel Steinberg on 12/25/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ValueModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.secondary)
    }
}
