//
//  MenuScene.swift
//  ArtGameProject
//
//  Created by Gulia_Is on 13.07.17.
//  Copyright © 2017 iOSLab. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
 
    var starfield:SKEmitterNode!
    
    var newGameButtonNode:SKSpriteNode!
    
    override func didMove(to view: SKView) {
        
        starfield = self.childNode(withName: "starfield") as! SKEmitterNode
        starfield.advanceSimulationTime(10)
        
        newGameButtonNode = self.childNode(withName: "newGameButton") as! SKSpriteNode
        newGameButtonNode.texture = SKTexture(imageNamed: "newGameButton")
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first
        if let location = touch?.location(in: self) {
            let node = self.nodes(at: location)
            
            if node[0].name == "newGameButton" {
                let transition = SKTransition.flipHorizontal(withDuration: 0.5)
                let gameScene = GameScene(size: self.size)
                self.view!.presentScene(gameScene, transition: transition)
            }
            
        }
       
    }
    
}
