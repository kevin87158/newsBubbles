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

        print("thirdView")
        
                skView = SKView(frame: UIScreen.mainScreen().applicationFrame)
                skView.backgroundColor = SKColor.blueColor()
                view.addSubview(skView)

                floatingCollectionScene = BubblesScene(size: skView.bounds.size)
//                let navBarHeight = CGRectGetHeight(navigationController!.navigationBar.frame)
//                let statusBarHeight = CGRectGetHeight(UIApplication.sharedApplication().statusBarFrame)
        
                let navBarHeight = CGRectGetHeight(self.accessibilityFrame.standardized)
                let statusBarHeight = CGRectGetHeight(self.accessibilityFrame.standardized)
                floatingCollectionScene.topOffset = navBarHeight + statusBarHeight
                skView.presentScene(floatingCollectionScene)  //泡泡呈現的位置
        
//
//                // navigation item 的測試
        
    //第一種
//                navigationItem.rightBarButtonItem = UIBarButtonItem(
//                    barButtonSystemItem: .Done,
//                    target: self,
//                    action: "commitSelection"
//                )
    //第二種
        //        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        //        title = "返回上一頁

    //第三種
        let button:UIButton = UIButton()
        
        button.frame = CGRectMake(0, 0, 22, 22)
        
        button.addTarget(self, action: "back:", forControlEvents: UIControlEvents.TouchUpInside)  //back
        
        let leftItem: UIBarButtonItem = UIBarButtonItem()
        
        leftItem.style = .Plain
        leftItem.title = "返回"
        
        self.navigationItem.leftBarButtonItem = leftItem
        
        
        
        
        //印出泡泡
                for _ in 0..<15 {
                    let node = BubbleNode.instantiate()
                    node.labelNode.text = String(arc4random()%100)
                    floatingCollectionScene.addChild(node)
                }

      
        

    }
    
    
    func back(){
    print("back")
    }
    
    
    
    
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    dynamic private func commitSelection() {
        floatingCollectionScene.performCommitSelectionAnimation()
    }
    
}
