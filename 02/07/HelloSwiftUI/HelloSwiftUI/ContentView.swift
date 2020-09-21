import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("A SwiftUI Kickstart")
      .background(Color.yellow)

      .padding()
      .background(Color.green)
      
      .font(.largeTitle)
      
      .padding()
      .background(Color.blue)
      
      .foregroundColor(.purple)
      
      .padding()
      .background(Color.secondary)
    
      .border(Color.red, width: 5)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}

//
//struct ContentView: View {
//  var body: some View {
//    VStack {
//      Text("A SwiftUI Kickstart")
//        .font(.largeTitle)
//      Text("Fun Driven Development")
//        .font(.headline)
//        .fontWeight(.light)
//        .italic()
//        .foregroundColor(.purple)
//
//    }
//    .foregroundColor(.secondary)
//  }
//}
