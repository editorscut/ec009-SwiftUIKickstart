//
//  MoodInputView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/15/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct MoodInputView: View {
    @ObservedObject var presenter: MoodInputPresenter
    
    var body: some View {
        VStack {
            Group {
                ContextInputField(context: $presenter.context)
                presenter.warningViewIfNecessary
            }
            .animation(.easeIn)
            FaceView(value: presenter.value)
            ValueSlider(value: $presenter.value)
            MoodInputButton(contextIsNotValid: presenter.contextIsNotValid,
                            save: presenter.saveMood)
        }
    }
}

struct MoodInputView_Previews: PreviewProvider {
    static var previews: some View {
        MoodInputView(presenter: MoodInputPresenter(History()))
    }
}
