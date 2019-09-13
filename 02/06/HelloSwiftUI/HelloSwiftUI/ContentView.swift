import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("An Introduction to SwiftUI")
                .font(.largeTitle)
                .foregroundColor(.secondary)
            Spacer()
            Image("Cover")
                .overlay(Rectangle()
                          .stroke(Color.gray))
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
