//
//  ScoreOverlayScene.swift
//  SceneKit-Exercise-01
//
//  Created by Janina Koskela on 15/11/2018.
//  Copyright © 2018 Shipyard Games Oy. All rights reserved.
//

import Foundation
import SpriteKit

class ScoreOverlayScene: SKScene {
    
    var labelNode: SKLabelNode?
    
    override init(size: CGSize) {
        super.init(size: size)
        scaleMode = .resizeFill
        labelNode = SKLabelNode(text: "Score: ")
        labelNode?.position = CGPoint(x: frame.midX, y: frame.maxY - 50)
        labelNode?.fontColor = NSColor.black
        self.addChild(labelNode!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateScoreText(points: Int) {
        labelNode?.text = "Score: " + String(points)
    }
    
}
