import SwiftUI

let increments = [1, 2, 3, 5, 10]

struct ContentView {
  @State private var currentValue = 0
  @State private var incrementIndex = 0
}

extension ContentView: View {
  var body: some View {
    VStack {
      IntDisplay(value: currentValue)
      HStack {
        SymbolButton("arrow.left",
                     action: back)
          .padding()
        SymbolButton("arrow.right",
                     action: forward)
          .padding()
      }
      Picker("Choose the increment",
             selection: $incrementIndex){
        ForEach(increments.indices) {index in
          Text("by \(increments[index])")
        }
      }
      .pickerStyle(SegmentedPickerStyle())
      .padding()
    }
  }
}

extension ContentView {
  private func back() {
    currentValue -= increments[incrementIndex]
  }
  private func forward() {
    currentValue += increments[incrementIndex]
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
