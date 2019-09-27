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
    @ObservedObject var presenter: MoodInputPresenter
    
//    var lengthWarningView: LengthWarningView? {
//        presenter.contextIsTooLong ? LengthWarningView() : nil
//    }
    
    var body: some View {
        VStack {
            ContextInputField(context: $presenter.context)
            LengthWarningView()
//            lengthWarningView?
//                .animation(.easeInOut(duration: 1))
            FaceView(value: value)
            ValueSlider(value: $value,
                        rating: $presenter.rating)
            MoodInputButton(contextIsNotValid: presenter.contextIsNotValid,
                            save: (presenter.saveMood))
        }
    }
}

struct MoodInputView_Previews: PreviewProvider {
    static var previews: some View {
        MoodInputView(presenter: MoodInputPresenter(History()))
    }
}
