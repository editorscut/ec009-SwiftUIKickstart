//
//  TintSelector.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/13/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct TintSelector: View {
    @EnvironmentObject private var customTint: CustomTint
    @Binding var showingTintSelector: Bool

    var body: some View {
        VStack {
            Spacer()
            Text("Selected Tint Color")
                .font(.largeTitle)
                .foregroundColor(customTint.color).accessibility(value: Text(customTint.color.description))
            Picker(selection: $customTint.selectedColor,
                   label: Text("Select a Color")){
                    ForEach(0 ..< CustomTint.colors.count) {index in
                        Text(CustomTint.colors[index].description)
                    }
            }.pickerStyle(SegmentedPickerStyle())
            Spacer()
            Button(action: {self.showingTintSelector = false}){
                Text("Dismiss")
                    .accentColor(customTint.color)
            }
        }
    }
}

struct TintSelector_Previews: PreviewProvider {
    static var previews: some View {
        TintSelector(showingTintSelector: .constant(false)).environmentObject(CustomTint())
    }
}
