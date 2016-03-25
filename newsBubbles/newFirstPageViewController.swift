//
//  newFirstPageViewController.swift
//  newsBubbles
//
//  Created by kevin on 2016/3/24.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit
import SpriteKit


class newFirstPageViewController: UIViewController {
    private var skView: SKView!
    private var floatingCollectionScene: BubblesScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()



        skView = SKView(frame: UIScreen.mainScreen().bounds)
        view.addSubview(skView)
        
        //設定框架
        floatingCollectionScene = BubblesScene(size: skView.bounds.size)
        skView.presentScene(floatingCollectionScene)

        skView.backgroundColor = UIColor.blackColor()
        //設定navigation
        self.navigationItem.title = "所有新聞parse"
        
        
        //新增網站泡泡
        let yahooNewsBubble = BubbleNode.instantiate()
        yahooNewsBubble.VC = self
        yahooNewsBubble.labelNode.text = "yahoo新聞"
        yahooNewsBubble.labelNode.name = "yahoo新聞"
        yahooNewsBubble.fillColor = UIColor.purpleColor()
        floatingCollectionScene.addChild(yahooNewsBubble)
        
        let appleNewsBubble = BubbleNode.instantiate()
        appleNewsBubble.VC = self
        appleNewsBubble.labelNode.text = "蘋果新聞"
        appleNewsBubble.labelNode.name = "蘋果新聞"
        appleNewsBubble.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(appleNewsBubble)
        
        let udnNewsBubble = BubbleNode.instantiate()
        udnNewsBubble.VC = self
        udnNewsBubble.labelNode.text = "udn新聞"
        udnNewsBubble.labelNode.name = "udn新聞"
        udnNewsBubble.fillColor = UIColor.orangeColor()
        floatingCollectionScene.addChild(udnNewsBubble)
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
