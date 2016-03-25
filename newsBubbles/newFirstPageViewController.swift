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
        skView.backgroundColor = SKColor.redColor()
        view.addSubview(skView)
        
        let btn1 = UIButton(frame: CGRect(x: 0, y: 630, width:self.view.frame.width, height: self.view.frame.height))
        btn1.backgroundColor = UIColor.blueColor()
        skView.addSubview(btn1)
        
        
        
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
        
        
        
        
        //設定navigation
        self.navigationItem.title = "NEWS"
        
        
        //新增網站泡泡
        let yahooNewsBubble = BubbleNode.instantiate()
        yahooNewsBubble.VC = self
        yahooNewsBubble.labelNode.text = "yahoo新聞"
        yahooNewsBubble.labelNode.name = "yahoo新聞"
        yahooNewsBubble.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.1)
        floatingCollectionScene.addChild(yahooNewsBubble)
        
        let appleNewsBubble = BubbleNode.instantiate()
        appleNewsBubble.VC = self
        appleNewsBubble.labelNode.text = "蘋果新聞"
        appleNewsBubble.labelNode.name = "蘋果新聞"
        appleNewsBubble.fillColor = UIColor(red: 0, green: 1, blue: 1, alpha: 0.1)
        floatingCollectionScene.addChild(appleNewsBubble)
        
        let udnNewsBubble = BubbleNode.instantiate()
        udnNewsBubble.VC = self
        udnNewsBubble.labelNode.text = "udn新聞"
        udnNewsBubble.labelNode.name = "udn新聞"
        udnNewsBubble.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.1)
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
