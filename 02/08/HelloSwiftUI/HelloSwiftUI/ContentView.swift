import SwiftUI

struct ContentView: View {
    var body: some View {
        CheckerBoard {
            Image("Cover")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
