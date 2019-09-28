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
    @State private var context = ""
    let history: History
    
    var body: some View {
        VStack {
            ContextInputField(context: $context)
            LengthWarningView(context: context)
            ValueView(value: value)
            ForEach(0 ..< 4) {_ in
                ValueSlider(value: self.$value)
            }
            MoodInputButton(value: $value,
                            context: $context,
                            history: history)
            ForEach(history.moods
                .map(MoodPresenter.init(mood:))){presenter in
                    Text(presenter.context)
                        .foregroundColor(.purple)
            }
        }
    }}

struct MoodInputView_Previews: PreviewProvider {
    static var previews: some View {
        MoodInputView(history: History())
    }
}
