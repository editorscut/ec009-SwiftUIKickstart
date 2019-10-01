import SwiftUI

//struct ContentView: View {
//    let coverImage = UIImage(named: "Cover")
//
//    var body: some View {  // the following does not compile
//        if let cover = coverImage {
//            return Image(uiImage: cover)
//        } else {
//            return Text("Hello")
//        }
//    }
//}
//
//struct ContentView: View {
//    let coverImage = UIImage(named: "Cover")
//
//    var body: some View {
//        if coverImage != nil {
//            return Text("A SwiftUI Kickstart")
//        } else {
//            return Text("Hello")
//        }
//    }
//}


struct ContentView: View {
    let message
        = UIImage(named: "Cover") != nil
            ? "A SwiftUI Kickstart"
            : "Hello"
    
    var body: some View {
        Text(message)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
