//
//  GameOverScene.swift
//  Breakout
//
//  Created by Gabriel Alberto de Jesus Preto on 06/05/15.
//  Copyright (c) 2015 Gabriel Alberto. All rights reserved.
//

import SpriteKit

let GameOverLabelCategoryName = "gameOverLabel"

class GameOverScene: SKScene {
    
    var gameWon : Bool = false {
        didSet {
            let gameOverLabel = childNodeWithName(GameOverLabelCategoryName) as! SKLabelNode
            
            gameOverLabel.text = gameWon ? "Você venceu!" : "Você perdeu!"
        }
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let view = view {
            let gameScene = GameScene.unarchiveFromFile("GameScene") as! GameScene
            view.presentScene(gameScene)
        }
    }
}
