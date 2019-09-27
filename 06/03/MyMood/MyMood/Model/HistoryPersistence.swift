//
//  HistoryPersistence.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/19/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import Foundation
import SwiftUI

fileprivate let stored = UserDefaults.standard
fileprivate let moodsKey = "UserDefaultsMoods"

extension History {
    func initializeMoods() -> [Mood] {
        guard let moods = stored.value(forKey: moodsKey) as? Data,
            let decodedMoods
                = try? PropertyListDecoder()
                    .decode([Mood].self,
                            from: moods) else {return [Mood]()}
        return decodedMoods
    }
}

extension History {
    
    func updateMoodRecords() {
        if let encodedMoods = try? PropertyListEncoder().encode(moods){
            stored.set(encodedMoods, forKey: moodsKey)}
    }
}
