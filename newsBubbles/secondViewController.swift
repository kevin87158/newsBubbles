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
        
        
        
        
        self.navigationItem.title = "gkkgkg"
        
            let node = BubbleNode.instantiate()
            node.labelNode.text = "即時新聞"
            node.labelNode.name = "即時新聞"
            floatingCollectionScene.addChild(node)

   
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
