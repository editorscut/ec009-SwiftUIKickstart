import SwiftUI

struct CurrentView {
  @State private var rating = ""
}

extension CurrentView: View {
    var body: some View {
      Text("Current View")
    }
}

struct CurrentView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentView()
    }
}
