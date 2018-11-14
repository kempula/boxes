//
//  MoveComponent.swift
//  SceneKit-Exercise-01
//
//  Created by Andreas Wedenberg on 07/01/2018.
//  Copyright © 2018 Shipyard Games Oy. All rights reserved.
//

import GameplayKit
import SceneKit

class MoveComponent: GKComponent {
    
    var node: SCNNode!
    let movementInterval: TimeInterval = 3
    let lowerValue = -3
    let upperValue = 3
    let y = 3
    
    private var time: TimeInterval = 0
    
    init(node: SCNNode) {
        self.node = node
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        super.update(deltaTime: seconds)

        time += seconds
        
        if time > movementInterval {
            time = 0
            
            let x = Int(arc4random_uniform(UInt32(upperValue - lowerValue + 1))) + lowerValue
            let z = Int(arc4random_uniform(UInt32(upperValue - lowerValue + 1))) + lowerValue
            
            node.physicsBody?.applyForce(SCNVector3(x,y,z), asImpulse: true)
        }
        
    }
}

