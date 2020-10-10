import SwiftUI

struct CurrentView {
  @ObservedObject private(set) var history: History
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
      
      Button("Record Rating"){
        history.add(support.rating)
        support.rating = ""
      }
      .disabled(support.inputIsNotValid)
    }
  }
}

struct CurrentView_Previews: PreviewProvider {
  static var previews: some View {
    CurrentView(history: History())
  }
}
