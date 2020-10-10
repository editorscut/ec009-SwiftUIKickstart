//
//  DestinationView.swift
//  CheckIn
//
//  Created by Daniel Steinberg on 10/7/20.
//

import SwiftUI

struct DestinationView {
  let snapshot: Snapshot
}

extension DestinationView: View {
    var body: some View {
      VStack(spacing: 40) {
        Text(snapshot.rating.description)
          .font(.largeTitle)
        Text(snapshot.date, style: .time)
        Image(systemName: symbol(snapshot.rating))
          .resizable().aspectRatio(1, contentMode: .fit)
      }
    }
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView(snapshot: Snapshot(rating: 73))
    }
}
