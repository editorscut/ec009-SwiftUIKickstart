import SwiftUI

struct HistoryView {
  @State private var isSheetDisplayed = false
  @State private var currentAccentColor: Color = .accentColor
}

extension HistoryView: View {
  var body: some View {
    VStack {
      Text("History View")
      Button("Change accent color") {
        isSheetDisplayed = true
      }
    }
    .sheet(isPresented: $isSheetDisplayed) {
      AccentColorPicker(customAccentColor: $currentAccentColor,
                        isSheetDisplayed: $isSheetDisplayed)
    }
  }
}

struct HistoryView_Previews: PreviewProvider {
  static var previews: some View {
    HistoryView()
  }
}
