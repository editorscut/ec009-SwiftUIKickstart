import SwiftUI

struct CurrentView {
  let history: History
  @StateObject private var support = CurrentViewSupport()
}

extension CurrentView: View {
  var body: some View {
    VStack(spacing: 40) {
      Text(support.textInputWarning)
        .foregroundColor(support.warningNotDisplayed
                         ? .clear
                         : .red)
      TextField(support.prompt,
                text: $support.rating)
        .onSubmit {
          if support.inputIsValid {
            recordRating()
          }
        }
        .modifier(TextEntryModifier())
      
      Button("Record Rating",
             action: recordRating)
        .disabled(support.inputIsNotValid)
    }
  }
}

extension CurrentView {
  private func recordRating() {
    if let ratingAsInt = Int(support.rating) {
      history.add(ratingAsInt)
      support.clearRating()
    }
  }
}



struct CurrentView_Previews: PreviewProvider {
  static var previews: some View {
    CurrentView(history: History())
  }
}
