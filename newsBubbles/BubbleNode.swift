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

class BubbleNode: SIFloatingNode{
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
//        node.fillColor = SKColor(hue: 218.5, saturation: 0.5781, brightness: 0.9294, alpha: 1)
        
      node.fillColor = UIColor(white: 	000, alpha: 0.3)

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
        
//        
        switch self.labelNode.name!{
            
        case "即時新聞":
                self.valueForKey("即時新聞")
                
                print("即時新聞")
            break
            
        case "政治新聞":
                print("政治新聞")
            break
            
        case "地方新聞" :
                            print("地方新聞")
            break
            
        case "科技新聞" :
                            print("科技新聞")
            break
        
        case "體育新聞" :
                            print("體育新聞")
            break
            
        case "教育新聞" :
                            print("教育新聞")
            break
      
        case "民生新聞" :
                            print("民生新聞")
            
            break
            
        case "影劇新聞" :
                            print("影劇新聞")
            break
            
        case "社會新聞" :
                            print("社會新聞")
            break
            
        case "國際新聞" :
                            print("國際新聞")
            break
            
        case "財經新聞" :
                            print("財經新聞")
            break
            
        case "社會新聞" :
                            print("社會新聞")
            break
            
        case "健康新聞" :
                            print("健康新聞")
            break
            
        case "藝文新聞" :
                            print("藝文新聞")
            break
            
        case "旅遊新聞" :
                            print("旅遊新聞")
            break
            
        default:
            break
            
        }
        
//        if (self.labelNode.name == "test"){
//            print("OK")
//        }else{
//            print("XX")
//        }
        
        
        
        print("change page ")
        return SKAction.scaleTo(10, duration: 0.7)

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