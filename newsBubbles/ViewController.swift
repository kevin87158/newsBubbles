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
//        
        
        //這邊改寫成另種數值
        let navBarHeight = CGRectGetHeight(self.accessibilityFrame.standardized)
        let statusBarHeight = CGRectGetHeight(self.accessibilityFrame.standardized)
        floatingCollectionScene.topOffset = navBarHeight + statusBarHeight
        skView.presentScene(floatingCollectionScene)

        
        
        for _ in 0..<15 {
            let node = BubbleNode.instantiate()
            node.VC = self
            node.labelNode.text = String(arc4random()%15)
            floatingCollectionScene.addChild(node)
        }
        
        
        
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
