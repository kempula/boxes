//
//  ScoreManager.swift
//  SceneKit-Exercise-01
//
//  Created by Janina Koskela on 14/11/2018.
//  Copyright © 2018 Shipyard Games Oy. All rights reserved.
//

import Foundation

class ScoreManager {
    
    var score: Int
    
    init() {
        score = 0
    }
    
    func addPoints(points: Int) {
        score += points
    }
    
    func getScore() -> Int {
        return score
    }
    
}
