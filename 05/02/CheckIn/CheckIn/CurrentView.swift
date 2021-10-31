import SwiftUI

struct CurrentView {
  @StateObject private var support = CurrentViewSupport()
}

extension CurrentView: View {
  var body: some View {
    VStack(spacing: 40) {
      TextField(support.prompt,
                text: $support.rating)
        .onSubmit(recordRating)
        .modifier(TextEntryModifier())
      
      Button("Record Rating",
             action: support.recordRating)
    }
  }
}

extension CurrentView {
  private func recordRating() {
    print(support.rating)
    support.clearRating()
  }
}


struct CurrentView_Previews: PreviewProvider {
  static var previews: some View {
    CurrentView()
  }
}
