//
//  ViewController.swift
//  newsBubbles
//
//  Created by kevin on 2016/3/8.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit
import SpriteKit

class appleViewController: UITabBarController,NSXMLParserDelegate{
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
        
        
        
        let btn1 = UIButton(frame: CGRect(x: 0, y: 600, width:self.view.frame.width, height: self.view.frame.height/10))
        btn1.backgroundColor = UIColor.blueColor()
        skView.addSubview(btn1)
        
        //        let btn2 = UIButton(frame: CGRect(x: 0, y: 0, width:self.view.frame.width, height: self.view.frame.height/10))
        //        btn2.backgroundColor = UIColor.redColor()
        //        btn2.titleLabel?.text = "news bubbles"
        //        btn2.addTarget(self, action: "gotoNewPage:", forControlEvents: UIControlEvents.TouchUpInside)
        //        skView.addSubview(btn2)
        
        
        //        let btn3 = UIButton(frame: CGRect(x: 30, y: 300, width:100, height: 100))
        //        btn3.backgroundColor = UIColor.blackColor()
        //        btn3.titleLabel?.text = "gotoNewPage"
        //        btn3.addTarget(self, action: "gotoNewPage:", forControlEvents: UIControlEvents.TouchUpInside)
        //        skView.addSubview(btn3)
        
        
        
        
        
        //最新的新聞內容 與上列設定
        
        //取得最新的新聞內容 只取最新的一筆
//        var getfirstNews:thirdViewController = thirdViewController()
//        let news = getfirstNews.beginParsing("http://www.appledaily.com.tw/rss/newcreate/kind/sec/type/1077")
//        let firstnews = UILabel(frame: CGRect(x: 0, y: 50, width:self.view.frame.width, height: self.view.frame.height/10))
//        firstnews.text = "最新消息:"
//        skView.addSubview(firstnews)
//        
//        let firstnewstitle = UILabel(frame: CGRect(x: 100, y: 50, width:self.view.frame.width, height: self.view.frame.height/10))
//        firstnewstitle.text = temp.firstPageNewsTitle as String
//        skView.addSubview(firstnewstitle)
//        
//        let firstnewsTime = UILabel(frame: CGRect(x: 100, y: 80, width:self.view.frame.width, height: self.view.frame.height/10))
//        firstnewsTime.text = temp.firstPageNewsDate as String
//        skView.addSubview(firstnewsTime)
//        
//        //上層蓋著一個按鈕
//        let gotofirstNews = UIButton(frame: CGRect(x: 0, y: 60, width:self.view.frame.width, height: self.view.frame.height/10))
//        skView.addSubview(gotofirstNews)
        
        
        
        
        
        
        //泡泡設定
        let node = BubbleNode.instantiate()
        node.VC = self
        node.labelNode.text = "最新"
        node.labelNode.name = "最新即時新聞"
        node.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(node)
        
        let node1 = BubbleNode.instantiate()
        node1.VC = self
        node1.labelNode.text = "頭條"
        node1.labelNode.name = "頭條新聞"
        node1.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(node1)
        
        let node2 = BubbleNode.instantiate()
        node2.VC = self
        node2.labelNode.text = "娛樂名人"
        node2.labelNode.name = "娛樂名人新聞"
        node2.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(node2)
        
        let node3 = BubbleNode.instantiate()
        node3.VC = self
        node3.labelNode.text = "國際頭條"
        node3.labelNode.name = "國際頭條新聞"
        node3.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(node3)
        
        let node4 = BubbleNode.instantiate()
        node4.VC = self
        node4.labelNode.text = "體育焦點"
        node4.labelNode.name = "體育焦點"
        node4.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(node4)
        
        let node5 = BubbleNode.instantiate()
        node5.VC = self
        node5.labelNode.text = "財經焦點"
        node5.labelNode.name = "財經焦點"
        node5.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(node5)
        
        let node6 = BubbleNode.instantiate()
        node6.VC = self
        node6.labelNode.text = "科技3C"
        node6.labelNode.name = "科技3C新聞"
        node6.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(node6)
        
        let node7 = BubbleNode.instantiate()
        node7.VC = self
        node7.labelNode.text = "地產焦點"
        node7.labelNode.name = "地產焦點"
        node7.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(node7)
        
        let node8 = BubbleNode.instantiate()
        node8.VC = self
        node8.labelNode.text = "美食天地"
        node8.labelNode.name = "美食天地"
        node8.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(node8)
        
        let node9 = BubbleNode.instantiate()
        node9.VC = self
        node9.labelNode.text = "旅遊與探險"
        node9.labelNode.name = "旅遊與探險"
        node9.fillColor = UIColor.redColor()
        floatingCollectionScene.addChild(node9)
        
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
    
    
    //    func gotoNewPage(sender:UIButton!){
    //        print("goto newPage")
    
    //        let secondViewController:testViewController = testViewController()
    
    //        self.presentViewController(secondViewController, animated: true, completion: nil)
    //        self.navigationController?.pushViewController(secondViewController, animated: true)
    //        selectedViewController?.navigationController?.pushViewController(secondViewController, animated: true)
    
    
    //    }
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
