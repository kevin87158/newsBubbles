//
//  ViewController.swift
//  newsBubbles
//
//  Created by kevin on 2016/3/8.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UITabBarController{
    private var skView: SKView!
    private var floatingCollectionScene: BubblesScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        skView = SKView(frame: UIScreen.mainScreen().bounds)
        skView.backgroundColor = SKColor.whiteColor()
        view.addSubview(skView)
        
        //設定框架
        floatingCollectionScene = BubblesScene(size: skView.bounds.size)
//        let navBarHeight = CGRectGetHeight(navigationController!.navigationBar.frame)
//        let statusBarHeight = CGRectGetHeight(UIApplication.sharedApplication().statusBarFrame)
////
        
        //這邊改寫成另種數值
//        let navBarHeight = CGRectGetHeight(self.accessibilityFrame.standardized)
//        let statusBarHeight = CGRectGetHeight(self.accessibilityFrame.standardized)
//        floatingCollectionScene.topOffset = navBarHeight + statusBarHeight
        skView.presentScene(floatingCollectionScene)


        
        let title = UILabel()
        title.text = "news  Bubbles"
        title.frame = CGRectMake(120, 50, self.view.frame.width, 20)
        skView.bringSubviewToFront(title)

        
        
        
        

        
        
        
        
        
        
//        let btn1 = UIButton(frame: CGRect(x: 200, y: 200, width: 44, height: 44))
//        btn1.backgroundColor = UIColor.blueColor()
//        skView.addSubview(btn1)
        
//        print("skView.fram: \(skView.frame.height)")
//        print("self.view.height\(self.view.frame.height)")
//        print("self.view.width\(self.view.frame.width)")

        let node = BubbleNode.instantiate()
            node.VC = self
            node.labelNode.text = "即時新聞"
            node.labelNode.name = "即時新聞"
//            node.frame.si
            floatingCollectionScene.addChild(node)

        let node1 = BubbleNode.instantiate()
        node1.VC = self
        node1.labelNode.text = "政治"
        node1.labelNode.name = "政治新聞"
        floatingCollectionScene.addChild(node1)
        
        let node2 = BubbleNode.instantiate()
        node2.VC = self
        node2.labelNode.text = "地方"
        node2.labelNode.name = "地方新聞"
        floatingCollectionScene.addChild(node2)
        
        let node3 = BubbleNode.instantiate()
        node3.VC = self
        node3.labelNode.text = "科技"
        node3.labelNode.name = "科技新聞"
        floatingCollectionScene.addChild(node3)
        
        let node4 = BubbleNode.instantiate()
        node4.VC = self
        node4.labelNode.text = "體育"
        node4.labelNode.name = "體育新聞"
        floatingCollectionScene.addChild(node4)
        
        let node5 = BubbleNode.instantiate()
        node5.VC = self
        node5.labelNode.text = "教育"
        node5.labelNode.name = "教育新聞"
        floatingCollectionScene.addChild(node5)
        
        let node6 = BubbleNode.instantiate()
        node6.VC = self
        node6.labelNode.text = "民生"
        node6.labelNode.name = "民生新聞"
        floatingCollectionScene.addChild(node6)
        
        let node7 = BubbleNode.instantiate()
        node7.VC = self
        node7.labelNode.text = "影劇"
        node7.labelNode.name = "影劇新聞"
        floatingCollectionScene.addChild(node7)
        
        let node8 = BubbleNode.instantiate()
        node8.VC = self
        node8.labelNode.text = "社會"
        node8.labelNode.name = "社會新聞"
        floatingCollectionScene.addChild(node8)
        
        let node9 = BubbleNode.instantiate()
        node9.VC = self
        node9.labelNode.text = "國際"
        node9.labelNode.name = "國際新聞"
        floatingCollectionScene.addChild(node9)
        
        let node10 = BubbleNode.instantiate()
        node10.VC = self
        node10.labelNode.text = "財經"
        node10.labelNode.name = "財經新聞"
        floatingCollectionScene.addChild(node10)
        
        let node11 = BubbleNode.instantiate()
        node11.VC = self
        node11.labelNode.text = "健康"
        node11.labelNode.name = "健康新聞"
        floatingCollectionScene.addChild(node11)

        let node12 = BubbleNode.instantiate()
        node12.VC = self
        node12.labelNode.text = "藝文"
        node12.labelNode.name = "藝文新聞"
        floatingCollectionScene.addChild(node12)
        
        let node13 = BubbleNode.instantiate()
        node13.VC = self
        node13.labelNode.text = "旅遊"
        node13.labelNode.name = "旅遊新聞"
        floatingCollectionScene.addChild(node13)
        
        
    }
    
    
    func backToRoot(sender:UIButton!){
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        
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
