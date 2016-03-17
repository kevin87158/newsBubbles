//
//  BubbleNode.swift
//  newsBubbles
//
//  Created by yifan on 2016/3/14.
//  Copyright © 2016年 kevin. All rights reserved.
//

import Foundation

import UIKit
import SpriteKit

class BubbleNode: SIFloatingNode {
    var labelNode = SKLabelNode(fontNamed: "")
    
    
    class func instantiate() -> BubbleNode! {
        let node = BubbleNode(circleOfRadius: 50)
        configureNode(node)
        return node
    }
    
    class func configureNode(node: BubbleNode!) {
        
        let boundingBox = CGPathGetBoundingBox(node.path);
        let radius = boundingBox.size.width / 2.0;
        node.physicsBody = SKPhysicsBody(circleOfRadius: radius + 2)
        node.fillColor = SKColor(red: 1, green: 0, blue: 0.68, alpha: 1)
        
        node.strokeColor = node.fillColor
        
        
        
        node.labelNode.text = ""
        node.labelNode.position = CGPointZero
        node.labelNode.fontColor = SKColor.whiteColor()
        node.labelNode.fontSize = 10
        node.labelNode.userInteractionEnabled = false
        node.labelNode.verticalAlignmentMode = .Center
        node.labelNode.horizontalAlignmentMode = .Center
        node.addChild(node.labelNode)
    }
    
        override func selectingAnimation() -> SKAction? {
        removeActionForKey(BubbleNode.removingKey)

            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc = storyboard.instantiateViewControllerWithIdentifier("thirdView")
            
            let vcc = storyboard.instantiateViewControllerWithIdentifier("firstViewController")
            
            vcc.presentViewController(vc, animated: true, completion: nil)
//            self.navigationController!.pushViewController(self.storyboard!.instantiateViewControllerWithIdentifier("view2") as UIViewController, animated: true)
            
            
                print(123)
        return SKAction.scaleTo(1.3, duration: 0.2)
        
    }
    
    override func normalizeAnimation() -> SKAction? {
        removeActionForKey(BubbleNode.removingKey)
        return SKAction.scaleTo(1, duration: 0.2)
    }
    
    override func removeAnimation() -> SKAction? {
        removeActionForKey(BubbleNode.removingKey)
        return SKAction.fadeOutWithDuration(0.2)
    }
    
    override func removingAnimation() -> SKAction {
        let pulseUp = SKAction.scaleTo(xScale + 0.13, duration: 0)
        let pulseDown = SKAction.scaleTo(xScale, duration: 0.3)
        let pulse = SKAction.sequence([pulseUp, pulseDown])
        let repeatPulse = SKAction.repeatActionForever(pulse)
        return repeatPulse
    }
}