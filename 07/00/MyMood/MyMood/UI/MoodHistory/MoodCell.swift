//
//  MoodCell.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/19/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct MoodCell: View {
    let presenter: MoodPresenter
    
    var body: some View {
        HStack {
            Text(presenter.context).padding(.leading)
            Spacer()
            Text(presenter.rating).padding(.trailing)
        }
    }
}

struct MoodCell_Previews: PreviewProvider {
    static var previews: some View {
        MoodCell(presenter: MoodPresenter(mood: nil))
    }
}
