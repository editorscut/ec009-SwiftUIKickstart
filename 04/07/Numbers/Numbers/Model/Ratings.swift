//
//  Ratings.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/11/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

let ratings = Ratings()

class Ratings: ObservableObject {
    @Published var value = 2.0
    fileprivate init(){}
}
