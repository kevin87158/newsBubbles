//
//  File.swift
//  newsBubbles
//
//  Created by yifan on 2016/3/18.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit
import SpriteKit

class thirdViewController: UIViewController {
    private var skView: SKView!
    private var floatingCollectionScene: BubblesScene!
    
    
    //    @IBOutlet weak var slideBar: UIBarButtonItem!  //滑動列
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
    
    
    
    override func viewDidAppear(animated: Bool) {
        skView = SKView(frame: UIScreen.mainScreen().bounds)
        skView.backgroundColor = SKColor.whiteColor()
        view.addSubview(skView)
        
        floatingCollectionScene = BubblesScene(size: skView.bounds.size)
//                let navBarHeight = CGRectGetHeight(navigationController!.navigationBar.frame)
//                let statusBarHeight = CGRectGetHeight(UIApplication.sharedApplication().statusBarFrame)
//                floatingCollectionScene.topOffset = navBarHeight + statusBarHeight
        skView.presentScene(floatingCollectionScene)  //泡泡呈現的位置
        
       
//        // navigation item
//        navigationItem.rightBarButtonItem = UIBarButtonItem(
//            barButtonSystemItem: .Done,
//            target: self,
//            action: "commitSelection"
//        )
        
        for _ in 0..<15 {
            let node = BubbleNode.instantiate()
            node.labelNode.text = String(arc4random()%100)
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
