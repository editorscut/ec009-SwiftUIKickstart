//
//  CurrentView.swift
//  CheckIn
//
//  Created by Daniel Steinberg on 10/4/20.
//

import SwiftUI

struct CurrentView {
  @StateObject private var support = CurrentViewSupport()
}

extension CurrentView: View {
  var body: some View {
    VStack(spacing: 20) {
      TextField(support.prompt,
                text: $support.rating)
        .modifier(TextEntryModifier())
      
      Button("Record Rating",
             action: support.action)
    }
  }
}

struct CurrentView_Previews: PreviewProvider {
  static var previews: some View {
    CurrentView()
  }
}
