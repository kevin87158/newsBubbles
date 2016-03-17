//
//  thirdViewController.swift
//  newsBubbles
//
//  Created by yifan on 2016/3/16.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit
import SpriteKit

class thirdViewController: UIViewController {
    private var skView: SKView!
    private var floatingCollectionScene: BubblesScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        skView = SKView(frame: UIScreen.mainScreen().bounds)
        skView.backgroundColor = SKColor.whiteColor()
        view.addSubview(skView)
        
        

        floatingCollectionScene = BubblesScene(size: skView.bounds.size)
        print(navigationController)
        let navBarHeight = CGRectGetHeight(navigationController!.navigationBar.frame)
        
        let statusBarHeight = CGRectGetHeight(UIApplication.sharedApplication().statusBarFrame)
        
        floatingCollectionScene.topOffset = navBarHeight + statusBarHeight
        skView.presentScene(floatingCollectionScene)
        
        
        
        // navigation item
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .Done,
            target: self,
            action: "commitSelection"
        )
        
        for _ in 0..<20 {
            let node = BubbleNode.instantiate()
            node.labelNode.text = String(arc4random()%100)
            floatingCollectionScene.addChild(node)
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
