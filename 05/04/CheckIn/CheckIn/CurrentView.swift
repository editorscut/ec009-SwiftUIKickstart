import SwiftUI

struct CurrentView {
  @StateObject private var support = CurrentViewSupport()
}

extension CurrentView: View {
  var body: some View {
    VStack(spacing: 20) {
      Text(support.textInputWarning)
        .foregroundColor(support.warningShouldBeVisible
                          ? .red
                          : .clear)
      TextField(support.prompt,
                text: $support.rating)
        .modifier(TextEntryModifier())
      
      Button("Record Rating",
             action: support.action)
        .disabled(support.inputIsNotValid)
    }
  }
}

struct CurrentView_Previews: PreviewProvider {
  static var previews: some View {
    CurrentView()
  }
}
