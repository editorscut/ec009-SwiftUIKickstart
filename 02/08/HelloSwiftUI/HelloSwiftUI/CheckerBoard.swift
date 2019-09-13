//
//  CheckerBoard.swift
//  TheCall
//
//  Created by Daniel Steinberg on 8/23/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct CheckerBoard: View  {
    let firstView: Image
    let secondView: some View = Rectangle()
    
    var body: some View {
        VStack {
            HStack {
                firstView
                secondView
            }
            HStack {
                secondView
                firstView
            }
        }
    }

    init(@CheckerBoardBuilder builder: () -> (Image)) {
        firstView = builder()
    }
}

@_functionBuilder
struct CheckerBoardBuilder {
    static func buildBlock(_ image: Image) -> Image {
        image
    }
}

//struct CheckerBoard_Previews: PreviewProvider {
//    static var previews: some View {
//        CheckerBoard {
//            Image("Cover")
//        }
//    }
//}
