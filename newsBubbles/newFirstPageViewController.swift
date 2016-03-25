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
        
//        let btn1 = UIButton(frame: CGRect(x: 0, y: 630, width:self.view.frame.width, height: self.view.frame.height))
//        btn1.backgroundColor = UIColor.blueColor()
//        skView.addSubview(btn1)
//        
        
        
//        //兩個漸層色
//        let color1 = UIColor(red: 0, green: 0, blue: 0.68, alpha: 1)
//        let color2 = UIColor(red: 0, green: 0, blue: 0.11, alpha: 1)
//        //漸層色的CALayer
//        let gradient = CAGradientLayer()
//        gradient.frame = self.skView.frame
//        gradient.colors = [color1.CGColor,color2.CGColor]
//        //加到畫面
//        self.skView.layer.insertSublayer(gradient,above:self.skView.layer)
        
        
        //設定框架
        floatingCollectionScene = BubblesScene(size: skView.bounds.size)
        skView.presentScene(floatingCollectionScene)

        skView.backgroundColor = UIColor.blackColor()
        //設定navigation
        self.navigationItem.title = "NEWS"
        
        
        //新增網站泡泡
        let yahooNewsBubble = BubbleNode.instantiate()
        yahooNewsBubble.VC = self
        yahooNewsBubble.labelNode.text = "yahoo新聞"
        yahooNewsBubble.labelNode.name = "yahoo新聞"
        yahooNewsBubble.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.4)
        floatingCollectionScene.addChild(yahooNewsBubble)
        
        let appleNewsBubble = BubbleNode.instantiate()
        appleNewsBubble.VC = self
        appleNewsBubble.labelNode.text = "蘋果新聞"
        appleNewsBubble.labelNode.name = "蘋果新聞"
        appleNewsBubble.fillColor = UIColor(red: 0, green: 1, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(appleNewsBubble)
        
        let udnNewsBubble = BubbleNode.instantiate()
        udnNewsBubble.VC = self
        udnNewsBubble.labelNode.text = "udn新聞"
        udnNewsBubble.labelNode.name = "udn新聞"
        udnNewsBubble.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(udnNewsBubble)
        
        let NewsBubble1 = BubbleNode.instantiate()
        NewsBubble1.VC = self
        NewsBubble1.labelNode.text = "東森新聞"
        NewsBubble1.labelNode.name = "東森新聞"
        NewsBubble1.fillColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
        floatingCollectionScene.addChild(NewsBubble1)
        
        let NewsBubble2 = BubbleNode.instantiate()
        NewsBubble2.VC = self
        NewsBubble2.labelNode.text = "三立新聞"
        NewsBubble2.labelNode.name = "三立新聞"
        NewsBubble2.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(NewsBubble2)
        
        let NewsBubble3 = BubbleNode.instantiate()
        NewsBubble3.VC = self
        NewsBubble3.labelNode.text = "今日新聞"
        NewsBubble3.labelNode.name = "今日新聞"
        NewsBubble3.fillColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.3)
        floatingCollectionScene.addChild(NewsBubble3)
        
        let NewsBubble4 = BubbleNode.instantiate()
        NewsBubble4.VC = self
        NewsBubble4.labelNode.text = "中天新聞"
        NewsBubble4.labelNode.name = "中天新聞"
        NewsBubble4.fillColor = UIColor(red: 0.6, green: 0.1, blue: 0.1, alpha: 0.5)
        floatingCollectionScene.addChild(NewsBubble4)
        
        
        
        
        
        
        
        
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
