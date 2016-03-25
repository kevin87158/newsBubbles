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
        
        
        print(temp.favoriteCategory)
        switch temp.favoriteCategory {
        
        case "即時新聞" :
            print("有favorite")
            
            let node = BubbleNode.instantiate()
            node.labelNode.text = "即時"
            node.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node)

            break
            
        case "政治新聞":
            let node1 = BubbleNode.instantiate()
            node1.labelNode.text = "政治"
            node1.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node1)
            break
            
        case "地方新聞" :
            let node2 = BubbleNode.instantiate()
            node2.labelNode.text = "地方"
            node2.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node2)
            
            
            break
            
        case "科技新聞" :
            let node3 = BubbleNode.instantiate()
            node3.labelNode.text = "科技"
            node3.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node3)
            break
            
        case "體育新聞" :
            let node4 = BubbleNode.instantiate()
            node4.labelNode.text = "體育"
            node4.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node4)
            break
            
        case "教育新聞" :
            let node5 = BubbleNode.instantiate()
            node5.labelNode.text = "教育"
            node5.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node5)
            break
            
        case "民生新聞" :
            let node6 = BubbleNode.instantiate()
            node6.labelNode.text = "民生"
            node6.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node6)
            break
            
        case "影劇新聞" :
            let node7 = BubbleNode.instantiate()
            node7.labelNode.text = "影劇"
            node7.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node7)
            break
            
        case "社會新聞" :
            let node8 = BubbleNode.instantiate()
            node8.labelNode.text = "社會"
            node8.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node8)
            break
            
        case "國際新聞" :
            let node9 = BubbleNode.instantiate()
            node9.labelNode.text = "國際"
            node9.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node9)
            break
            
        case "財經新聞" :
            let node10 = BubbleNode.instantiate()
            node10.labelNode.text = "財經"
            node10.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node10)
            break
            
        case "社會新聞" :
            let node11 = BubbleNode.instantiate()
            node11.labelNode.text = "社會"
            node11.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node11)
            break
            
        case "健康新聞" :
            let node12 = BubbleNode.instantiate()
            node12.labelNode.text = "健康"
            node12.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node12)
            break
            
        case "藝文新聞" :
            let node13 = BubbleNode.instantiate()
            node13.labelNode.text =  "藝文"
            node13.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node13)
            break
            
        case "旅遊新聞" :
            let node14 = BubbleNode.instantiate()
            node14.labelNode.text = "旅遊"
            node14.labelNode.name = temp.favoriteCategory
            floatingCollectionScene.addChild(node14)

            break
            
        default:
            
            break
        
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
