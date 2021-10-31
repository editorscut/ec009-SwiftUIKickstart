import SwiftUI

struct AccentColorPicker {
  @Binding var customAccentColor: Color
  @Binding var isSheetDisplayed: Bool
}

extension AccentColorPicker: View {
  var body: some View {
    VStack(spacing: 40) {
      ColorPicker("Accent Color",
                  selection: $customAccentColor)
        .modifier(TextEntryModifier())
      
      Button("Dismiss"){
        isSheetDisplayed = false
      }
    }
    .accentColor(customAccentColor)
  }
}

struct AccentColorPicker_Previews: PreviewProvider {
  static var previews: some View {
    AccentColorPicker(customAccentColor: .constant(.blue),
                      isSheetDisplayed: .constant(true))
  }
}
