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
    var gotoYahooViewController:UIViewController?
    var gotoAppleViewController:UIViewController?
    var  gotoUdnViewController:UIViewController?
    var gotoThirdViewController:UIViewController?
    
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
    
    
    
    
    override func selectingAnimation() -> SKAction? { //
        removeActionForKey(BubbleNode.removingKey)
//
        switch self.labelNode.name!{
        case "即時新聞":
                temp.catgory = "即時新聞"
                print("泡泡選擇:即時新聞")
//                showTableView()
             
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
            
            
            
//apple news
        case "最新即時新聞" :
            temp.catgory = "最新即時新聞"
            print("泡泡選擇:最新即時新聞")
            showTableView()
            break
            
        case "頭條新聞" :
            temp.catgory = "頭條新聞"
            print("泡泡選擇:頭條新聞")
            showTableView()
            break
            
        case "娛樂名人新聞" :
            temp.catgory = "娛樂名人新聞"
            print("泡泡選擇:娛樂名人新聞")
            showTableView()
            break
            
        case "國際頭條新聞" :
            temp.catgory = "國際頭條新聞"
            print("泡泡選擇:國際頭條新聞")
            showTableView()
            break
            
        case "體育焦點" :
            temp.catgory = "體育焦點"
            print("泡泡選擇:體育焦點")
            showTableView()
            break
            
        case "財經焦點" :
            temp.catgory = "財經焦點"
            print("泡泡選擇:財經焦點")
            showTableView()
            break
            
        case "科技3C新聞" :
            temp.catgory = "科技3C新聞"
            print("泡泡選擇:科技3C新聞")
            showTableView()
            break
            
        case "地產焦點" :
            temp.catgory = "地產焦點"
            print("泡泡選擇:地產焦點")
            showTableView()
            break
            
        case "美食天地" :
            temp.catgory = "美食天地"
            print("泡泡選擇:美食天地")
            showTableView()
            break
            
        case "旅遊與探險" :
            temp.catgory = "旅遊與探險"
            print("泡泡選擇:旅遊與探險")
            showTableView()
            break
            
//udnNews
        case "要聞" :
            temp.catgory = "要聞"
            print("泡泡選擇:要聞")
            showTableView()
            break
        case "udn娛樂新聞" :
            temp.catgory = "udn娛樂新聞"
            print("泡泡選擇:udn娛樂新聞")
            showTableView()
            break
        case "udn地方新聞" :
            temp.catgory = "udn地方新聞"
            print("泡泡選擇:udn地方新聞")
            showTableView()
            break
        case "udn國際新聞" :
            temp.catgory = "udn國際新聞"
            print("泡泡選擇:udn國際新聞")
            showTableView()
            break
        case "運動新聞" :
            temp.catgory = "運動新聞"
            print("泡泡選擇:運動新聞")
            showTableView()
            break
            
            
//大類別選擇
        case "yahoo新聞":
            showYahooNewsBubbles()  //到yahoo 的類別選擇
            break
        case "蘋果新聞":
            showAppleNewsBubbles()  //到AppleNews 的類別選擇
            break
        case "udn新聞":
            showUdnNewsBubbles()    //到UdnNews 的類別選擇
            break
            
        default:
//            temp.catgory = "即時新聞"
//            print("泡泡選擇:即時新聞")
//            showTableView()
            break
            
        }
        print("goto  tableViewpage ")
        
        SKAction.scaleTo(1.2, duration: 1)
        return   SKAction.scaleTo(1.2, duration: 1)
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
        if gotoThirdViewController == nil{
            gotoThirdViewController = self.VC?.storyboard?.instantiateViewControllerWithIdentifier("thirdViewController")
        }
        self.VC?.navigationController?.pushViewController(gotoThirdViewController!, animated: true)
        
//        let title = self.VC?.storyboard?.instantiateViewControllerWithIdentifier("thirdViewController")
//        title?.navigationItem.title = "即時新聞"
    }

    func showYahooNewsBubbles(){
        if gotoYahooViewController == nil{
            gotoYahooViewController = self.VC?.storyboard?.instantiateViewControllerWithIdentifier("ViewController")
        }
        
        
        self.VC?.navigationController?.pushViewController(gotoYahooViewController!, animated: true)
    }
    
    func showAppleNewsBubbles(){
        if  gotoAppleViewController  == nil{
         gotoAppleViewController = self.VC?.storyboard?.instantiateViewControllerWithIdentifier("appleViewController")
        }
        self.VC?.navigationController?.pushViewController(gotoAppleViewController!, animated: true)
    }
    
    func showUdnNewsBubbles(){
        if  gotoUdnViewController == nil {
        gotoUdnViewController = self.VC?.storyboard?.instantiateViewControllerWithIdentifier("udnViewController")
        }
        self.VC?.navigationController?.pushViewController(gotoUdnViewController!, animated: true)
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