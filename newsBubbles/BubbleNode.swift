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
        node.fillColor = SKColor(red: 0, green: 0, blue: 0.7, alpha: 0.05)

        node.strokeColor = node.fillColor
        
        
        //設定泡泡內的文字設定
        node.labelNode.text = ""
        node.labelNode.position = CGPointZero
        node.labelNode.fontColor = SKColor.blackColor()
        node.labelNode.fontSize = 20
        node.labelNode.userInteractionEnabled = false
        node.labelNode.verticalAlignmentMode = .Center
        node.labelNode.horizontalAlignmentMode = .Center
        node.addChild(node.labelNode)
    }
    
    override func selectingAnimation() -> SKAction? {
        removeActionForKey(BubbleNode.removingKey)
//
        switch self.labelNode.name!{
        case "即時新聞":
                temp.catgory = "即時新聞"
                print("泡泡選擇:即時新聞")
                showTableView()
             
            break
            
        case "政治新聞":
                temp.catgory = "政治新聞"
                print("泡泡選擇:新聞")
                showTableView()
            break
            
        case "地方新聞" :
                temp.catgory = "地方新聞"
                print("泡泡選擇:地方新聞")
                showTableView()
            break
            
        case "科技新聞" :
                temp.catgory = "科技新聞"
                print("泡泡選擇:科技新聞")
                showTableView()
            break
        
        case "體育新聞" :
            temp.catgory = "體育新聞"
            print("泡泡選擇:體育新聞")
            showTableView()
            break
            
        case "教育新聞" :
            temp.catgory = "教育新聞"
            print("泡泡選擇:教育新聞")
            showTableView()
            break
      
        case "民生新聞" :
            temp.catgory = "民生新聞"
            print("泡泡選擇:民生新聞")
            showTableView()
            break
            
        case "影劇新聞" :
            temp.catgory = "影劇新聞"
            print("泡泡選擇:影劇新聞")
            showTableView()
            break
            
        case "社會新聞" :
            temp.catgory = "社會新聞"
            print("泡泡選擇:社會新聞")
            showTableView()
            break
            
        case "國際新聞" :
            temp.catgory = "國際新聞"
            print("泡泡選擇:國際新聞")
            showTableView()
            break
            
        case "財經新聞" :
            temp.catgory = "財經新聞"
            print("泡泡選擇:財經新聞")
            showTableView()
            break
            
        case "社會新聞" :
            temp.catgory = "社會新聞"
            print("泡泡選擇:社會新聞")
            showTableView()
            break
            
        case "健康新聞" :
            temp.catgory = "健康新聞"
            print("泡泡選擇:健康新聞")
            showTableView()
            break
            
        case "藝文新聞" :
            temp.catgory = "藝文新聞"
            print("泡泡選擇:藝文新聞")
            showTableView()
            break
            
        case "旅遊新聞" :
            temp.catgory = "旅遊新聞"
            print("泡泡選擇:旅遊新聞")
            showTableView()
            break
            
        default:
            temp.catgory = "即時新聞"
            print("泡泡選擇:即時新聞")
            showTableView()
            break
            
        }
        print("goto  tableViewpage ")
        return SKAction.scaleTo(1.2, duration: 1)

    }
    
    override func normalizeAnimation() -> SKAction? {
        removeActionForKey(BubbleNode.removingKey)
        
        return SKAction.scaleTo(1, duration: 0.2)
        
    }
    
    func showTableView(){
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewControllerWithIdentifier("thirdViewController")
//        //let vcc = storyboard.instantiateViewControllerWithIdentifier("ViewController")
//        VC!.presentViewController(vc, animated:true, completion: nil)
//    
//        let thirdViewController = self.storyboard.instantiateViewControllerWithIdentifier("thirdViewController")
//        
        
        let gotoThirdViewController = self.VC?.storyboard?.instantiateViewControllerWithIdentifier("thirdViewController")
        self.VC?.navigationController?.pushViewController(gotoThirdViewController!, animated: true)
//        let title = self.VC?.storyboard?.instantiateViewControllerWithIdentifier("thirdViewController")
//        title?.navigationItem.title = "即時新聞"
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