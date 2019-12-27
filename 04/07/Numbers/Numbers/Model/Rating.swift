//
//  Rating.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/11/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import Combine

let rating = Rating()

class Rating: ObservableObject {
    @Published var value = 2.0
    fileprivate init(){}
}
