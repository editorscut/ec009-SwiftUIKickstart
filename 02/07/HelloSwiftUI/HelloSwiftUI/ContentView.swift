import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .padding()
            .background(Color.orange)
            
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            
            .foregroundColor(.secondary)
            .padding()
            .background(Color.green)
    }
    
    func text() -> Text {
        return Text("this").font(.title).foregroundColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView()
    }
}
