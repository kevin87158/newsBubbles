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
    var VC:UIViewController?
    
    class func instantiate() -> BubbleNode! {
        let node = BubbleNode(circleOfRadius: 50)
        configureNode(node)
        return node
    }
    
    class func configureNode(node: BubbleNode!) {
        
        let boundingBox = CGPathGetBoundingBox(node.path);
        let radius = boundingBox.size.width / 2.0;
        node.physicsBody = SKPhysicsBody(circleOfRadius: radius + 2)
        //泡泡顏色
//        node.fillColor = SKColor(hue: 20/240.0, saturation: 10/240.0, brightness: 3/240.0, alpha: 0.3)
        node.fillColor = SKColor(hue: 50.8, saturation: 0.912, brightness: 1.000, alpha: 0.3)
      

        node.strokeColor = node.fillColor
        
        
        //設定泡泡內的文字設定
        node.labelNode.text = ""
        node.labelNode.position = CGPointZero
        node.labelNode.fontColor = SKColor.blackColor()
        node.labelNode.fontSize = 10
        node.labelNode.userInteractionEnabled = false
        node.labelNode.verticalAlignmentMode = .Center
        node.labelNode.horizontalAlignmentMode = .Center
        node.addChild(node.labelNode)
    }
    
    override func selectingAnimation() -> SKAction? {
        removeActionForKey(BubbleNode.removingKey)

            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc = storyboard.instantiateViewControllerWithIdentifier("thirdViewController")
            
            //let vcc = storyboard.instantiateViewControllerWithIdentifier("ViewController")
            
            
            VC!.presentViewController(vc, animated:true, completion: nil)
        
        
        print("change page ")
        return SKAction.scaleTo(10, duration: 0.7)

    }
    
    
 
    override func normalizeAnimation() -> SKAction? {
        removeActionForKey(BubbleNode.removingKey)
        
        
        print(456)
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