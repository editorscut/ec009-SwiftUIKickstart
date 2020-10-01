//
//  SystemLabel.swift
//  Symbols
//
//  Created by Daniel Steinberg on 9/28/20.
//

import SwiftUI

struct SystemLabel {
  let name: String
}

extension SystemLabel: View {
    var body: some View {
        Label(name,
              systemImage: name)
    }
}

struct SystemLabel_Previews: PreviewProvider {
    static var previews: some View {
      SystemLabel(name: "questionmark")
    }
}
