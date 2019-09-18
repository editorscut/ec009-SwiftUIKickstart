//
//  MoodInputView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/15/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct MoodInputView: View {
    @State private var value = 2.0
    let history: History
    
    var body: some View {
        VStack {
            ValueView(value: value)
            ValueSlider(value: $value)
            Button(action: {self.history.add(rating: self.value)}){
                Text("Record Mood")
            }
            
        }
    }
}

struct MoodInputView_Previews: PreviewProvider {
    static var previews: some View {
        MoodInputView(history: History())
    }
}
