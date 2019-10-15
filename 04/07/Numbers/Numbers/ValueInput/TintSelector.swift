//
//  TintSelector.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/13/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct TintSelector: View {
    @State private var customTint = CustomTint()
    
    var body: some View {
        VStack {
            Text("Selected Tint Color")
                .font(.largeTitle)
                .foregroundColor(customTint.color)
            Picker(selection: $customTint.selectedColor,
                   label: Text("Select a Color")){
                    ForEach(0 ..< CustomTint.colors.count) {index in
                        Text(CustomTint.colors[index].description)
                    }
            }.labelsHidden()
            //.pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct TintSelector_Previews: PreviewProvider {
    static var previews: some View {
        TintSelector()
    }
}
