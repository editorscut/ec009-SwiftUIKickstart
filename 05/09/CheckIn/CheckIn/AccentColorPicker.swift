import SwiftUI

struct AccentColorPicker {
  @Binding var customAccentColor: Color
  @Binding var isSheetDisplayed: Bool
  @EnvironmentObject private var accentInstance: Accent
}

extension AccentColorPicker: View {
  var body: some View {
    VStack(spacing: 40) {
      ColorPicker("Accent Color",
                  selection: $accentInstance.color)
        .modifier(TextEntryModifier())
      
      Button("Dismiss"){
        isSheetDisplayed = false
      }
    }
    .accentColor(accentInstance.color)
  }
}

struct AccentColorPicker_Previews: PreviewProvider {
  static var previews: some View {
    AccentColorPicker(customAccentColor: .constant(.blue),
                      isSheetDisplayed: .constant(true))
  }
}
