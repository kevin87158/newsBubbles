//
//  secondViewController.swift
//  newsBubbles
//
//  Created by kevin on 2016/3/14.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit
import SpriteKit

class secondViewController: UIViewController {
    private var skView: SKView!
    private var floatingCollectionScene: BubblesScene!

    var node = BubbleNode.instantiate()
    var node1 = BubbleNode.instantiate()
    var node2 = BubbleNode.instantiate()
    var node3 = BubbleNode.instantiate()
    var node4 = BubbleNode.instantiate()
    var node5 = BubbleNode.instantiate()
    var node6 = BubbleNode.instantiate()
    var node7 = BubbleNode.instantiate()
    var node8 = BubbleNode.instantiate()
    var node9 = BubbleNode.instantiate()
    var node10 = BubbleNode.instantiate()
    var node11 = BubbleNode.instantiate()
    var node12 = BubbleNode.instantiate()
    var node13 = BubbleNode.instantiate()
    var node14 = BubbleNode.instantiate()
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        skView = SKView(frame: UIScreen.mainScreen().bounds)
        skView.backgroundColor = SKColor.whiteColor()
        view.addSubview(skView)
        
        floatingCollectionScene = BubblesScene(size: skView.bounds.size)
        let navBarHeight = CGRectGetHeight(navigationController!.navigationBar.frame)
        let statusBarHeight = CGRectGetHeight(UIApplication.sharedApplication().statusBarFrame)
        floatingCollectionScene.topOffset = navBarHeight + statusBarHeight
        skView.presentScene(floatingCollectionScene)
        
        
        let btn1 = UIButton(frame: CGRect(x: 0, y: 630, width:self.view.frame.width, height: self.view.frame.height))
        btn1.backgroundColor = UIColor.blueColor()
        skView.addSubview(btn1)
        

        
//        
//        let newFavorite = UIButton(frame: CGRect(x: 0, y: 0, width:self.view.frame.width, height: self.view.frame.height/10))
//        newFavorite.backgroundColor = UIColor.redColor()
//        newFavorite.titleLabel?.text = "news bubbles"
//        skView.addSubview(newFavorite)
        
        
        //push view controller 
//        
//        let addView:ViewController = ViewController()
//        self.navigationController?.pushViewController(addView, animated: true)
//        let lable:UILabel = UILabel()
//        addView
//        
//        
        
        
        
        
        self.navigationItem.title = "我的最愛"
        
        
        
        
   
    }

    override func viewDidAppear(animated: Bool) {
        
        print(temp.favoriteCategory)
    if  temp.favoriteCategory != "" && node.labelNode.name != temp.favoriteCategory{
            
        switch temp.favoriteCategory{
            
        case "即時新聞" :
            print("有favorite")
            
            node = BubbleNode.instantiate()
            node.labelNode.text = "即時新聞"
            node.labelNode.name = temp.favoriteCategory
            node.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node)
            
            break
            
        case "政治新聞":
            node1 = BubbleNode.instantiate()
            node1.labelNode.text = "政治"
            node1.labelNode.name = temp.favoriteCategory
            node1.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node1)
            break
            
        case "地方新聞" :
            node2 = BubbleNode.instantiate()
            node2.labelNode.text = "地方"
            node2.labelNode.name = temp.favoriteCategory
            node2.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node2)
            
            
            break
            
        case "科技新聞" :
            node3 = BubbleNode.instantiate()
            node3.labelNode.text = "科技"
            node3.labelNode.name = temp.favoriteCategory
            node3.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node3)
            break
            
        case "體育新聞" :
            node4 = BubbleNode.instantiate()
            node4.labelNode.text = "體育"
            node4.labelNode.name = temp.favoriteCategory
            node4.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node4)
            break
            
        case "教育新聞" :
            node5 = BubbleNode.instantiate()
            node5.labelNode.text = "教育"
            node5.labelNode.name = temp.favoriteCategory
            node5.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node5)
            break
            
        case "民生新聞" :
            node6 = BubbleNode.instantiate()
            node6.labelNode.text = "民生"
            node6.labelNode.name = temp.favoriteCategory
            node6.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node6)
            break
            
        case "影劇新聞" :
            node7 = BubbleNode.instantiate()
            node7.labelNode.text = "影劇"
            node7.labelNode.name = temp.favoriteCategory
            node7.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node7)
            break
            
        case "社會新聞" :
            node8 = BubbleNode.instantiate()
            node8.labelNode.text = "社會"
            node8.labelNode.name = temp.favoriteCategory
            node8.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node8)
            break
            
        case "國際新聞" :
            node9 = BubbleNode.instantiate()
            node9.labelNode.text = "國際"
            node9.labelNode.name = temp.favoriteCategory
            node9.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node9)
            break
            
        case "財經新聞" :
            node10 = BubbleNode.instantiate()
            node10.labelNode.text = "財經"
            node10.labelNode.name = temp.favoriteCategory
            node10.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node10)
            break
            
        case "社會新聞" :
            node11 = BubbleNode.instantiate()
            node11.labelNode.text = "社會"
            node11.labelNode.name = temp.favoriteCategory
            node11.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node11)
            break
            
        case "健康新聞" :
            node12 = BubbleNode.instantiate()
            node12.labelNode.text = "健康"
            node12.labelNode.name = temp.favoriteCategory
            node12.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node12)
            break
            
        case "藝文新聞" :
            node13 = BubbleNode.instantiate()
            node13.labelNode.text =  "藝文"
            node13.labelNode.name = temp.favoriteCategory
            node13.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node13)
            break
            
        case "旅遊新聞" :
            if node14 == nil{
                
            }
            node14 = BubbleNode.instantiate()
            node14.labelNode.text = "旅遊"
            node14.labelNode.name = temp.favoriteCategory
            node14.fillColor = SKColor(red: 1, green: 1, blue: 0, alpha: 0.4)
            floatingCollectionScene.addChild(node14)
            
            break
            
        default:
            
            break
            
            print("break")
            
        }
            
        }

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    dynamic private func commitSelection() {
        floatingCollectionScene.performCommitSelectionAnimation()
    }

    
    
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
