import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("A SwiftUI Kickstart")
      .background(.yellow)
      .padding()
      .background(.blue)
      .font(.title)
      .padding()
      .background(.mint)
      .foregroundStyle(.purple)
      .padding()
      .background(.red.opacity(0.2))
      .border(.red, width: 5)
  }
}

#Preview {
  ContentView()
}
