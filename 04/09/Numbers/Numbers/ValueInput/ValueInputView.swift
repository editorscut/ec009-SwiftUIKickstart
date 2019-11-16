//
//  ValueInputView.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/11/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct ValueInputView: View {
    @State private var value = 2.0
    @State var showingTintSelector = false
    @EnvironmentObject var customTint: CustomTint
    
    var body: some View {
        VStack {
            ValueView(value: value)
                .gesture(TapGesture(count: 2)
                .onEnded{ self.showingTintSelector.toggle()
                }
            )
            ValueSlider(value: $value)
        }.sheet(isPresented: $showingTintSelector){
            TintSelector()
                .environmentObject(self.customTint)
        }
    }
}

struct ValueInputView_Previews: PreviewProvider {
    static var previews: some View {
        ValueInputView()
    }
}
