import SwiftUI

struct AccentColorPicker {
  @Binding var accentColor: Color
  @Binding var isSheetDisplayed: Bool
  @EnvironmentObject var accent: Accent
}

extension AccentColorPicker: View {
  var body: some View {
    VStack(spacing: 40) {
      ColorPicker("Choose accent color",
                  selection: $accentColor)
        .modifier(TextEntryModifier())
      Button("Dismiss",
             action: {isSheetDisplayed = false})
    }
    .accentColor(accent.color)
  }
}

struct AccentColorPicker_Previews: PreviewProvider {
  static var previews: some View {
    AccentColorPicker(accentColor: .constant(.blue),
                      isSheetDisplayed: .constant(true))
      .environmentObject(Accent())
  }
}
