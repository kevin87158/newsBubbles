//
//  ViewController.swift
//  newsBubbles
//
//  Created by kevin on 2016/3/8.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    private var skView: SKView!
    private var floatingCollectionScene: BubblesScene!

    @IBOutlet weak var slideBar: UIBarButtonItem!  //滑動列
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        slideBar.target = self.revealViewController()
        slideBar.action = Selector("revealToggle:")
        
//        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())  //讓slide bar 能使用手勢拉動

        
    
        
        skView = SKView(frame: UIScreen.mainScreen().bounds)
        skView.backgroundColor = SKColor.whiteColor()
        view.addSubview(skView)
        
        floatingCollectionScene = BubblesScene(size: skView.bounds.size)
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
            floatingCollectionScene.addChild(node)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    dynamic private func commitSelection() {
        floatingCollectionScene.performCommitSelectionAnimation()
    }


}

