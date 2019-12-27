//
//  DismisserView.swift
//  Numbers
//
//  Created by Daniel Steinberg on 11/16/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct DismisserView<WrappedView: View>: View {
    let containedView: WrappedView
    @Binding var showingTintSelector: Bool
    @EnvironmentObject var customTint: CustomTint
    
    var body: some View {
        VStack {
            Spacer()
            containedView
            Spacer()
            Button("Dismiss"){
                self.showingTintSelector.toggle()
            }
            .accentColor(customTint.color)
            .padding()
        }
    }
}

struct DismisserView_Previews: PreviewProvider {
    static var previews: some View {
        DismisserView(containedView: Text("Placeholder"), showingTintSelector: .constant(false))
    }
}
