import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Text("A SwiftUI Kickstart")
            HStack {
                Image("Cover")
                    .resizable()
                    .aspectRatio(aspectRatio, contentMode: .fit)
                Text("Introducing the SwiftUI")
            }
            HStack {
                Text("User Interface Framework")
                Image("Cover")
                    .resizable()
                    .aspectRatio(aspectRatio, contentMode: .fit)
            }
        }
    }
    
    var aspectRatio: CGFloat {
        let size = UIImage(named: "Cover")?.size ?? CGSize(width: 1, height: 1)
        return size.width/size.height
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
