import SwiftUI

struct HistoryView {
  @State private var isSheetDisplayed = false
  @State private var accentColor = Color.blue
}

extension HistoryView: View {
  var body: some View {
    Button("Change accent color",
           action: {isSheetDisplayed = true})
      .sheet(isPresented: $isSheetDisplayed){
        AccentColorPicker(accentColor: $accentColor,
                          isSheetDisplayed: $isSheetDisplayed)
      }
      .accentColor(accentColor)
  }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
