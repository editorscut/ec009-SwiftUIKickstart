import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Hello, how are you?")
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundColor(Color.red)
        .padding(.bottom)
      HStack {
        Button(action: {}) {
          Text("Button")
        }
        Button(action: {}) {
          Text("Button")
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.device)
  }
}
