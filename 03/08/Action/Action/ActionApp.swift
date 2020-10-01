//
//  ActionApp.swift
//  Action
//
//  Created by Daniel Steinberg on 9/22/20.
//

import SwiftUI

@main
struct ActionApp: App {
  @StateObject var support = ContentViewSupport()
  
  var body: some Scene {
    WindowGroup {
      ContentView(support: support)
    }
  }
}
