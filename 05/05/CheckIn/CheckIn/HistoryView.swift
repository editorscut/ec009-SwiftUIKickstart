import SwiftUI

struct HistoryView {
  @State private var isSheetDisplayed = false
  @EnvironmentObject private var accent: Accent
}

extension HistoryView: View {
  var body: some View {
    Button("Change accent color",
           action: {isSheetDisplayed = true})
      .sheet(isPresented: $isSheetDisplayed){
        AccentColorPicker(accentColor: $accent.color,
                          isSheetDisplayed: $isSheetDisplayed)
          .environmentObject(accent)
      }
  }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
