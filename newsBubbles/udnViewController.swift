//
//  ViewController.swift
//  newsBubbles
//
//  Created by kevin on 2016/3/8.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit
import SpriteKit

class udnViewController: UITabBarController,NSXMLParserDelegate{
    private var skView: SKView!
    private var floatingCollectionScene: BubblesScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        skView = SKView(frame: UIScreen.mainScreen().bounds)
        skView.backgroundColor = SKColor.whiteColor()
        view.addSubview(skView)
        
        //設定框架
        floatingCollectionScene = BubblesScene(size: skView.bounds.size)
        skView.presentScene(floatingCollectionScene)
        
        
        
        let btn1 = UIButton(frame: CGRect(x: 0, y: 620, width:self.view.frame.width, height: self.view.frame.height))
        btn1.backgroundColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.4)
        skView.addSubview(btn1)
 
        
        //最新的新聞內容 與上列設定
        
        //取得最新的新聞內容 只取最新的一筆
        var getfirstNews:thirdViewController = thirdViewController()
        let news = getfirstNews.beginParsing("https://tw.news.yahoo.com/rss/")
        
        
        
        
        let firstnews = UILabel(frame: CGRect(x: 0, y: 50, width:self.view.frame.width, height: self.view.frame.height/10))
        firstnews.text = "最新消息:"
        skView.addSubview(firstnews)
        
        let firstnewstitle = UILabel(frame: CGRect(x: 100, y: 50, width:self.view.frame.width, height: self.view.frame.height/10))
        firstnewstitle.text = temp.firstPageNewsTitle as String
        skView.addSubview(firstnewstitle)
        
        let firstnewsTime = UILabel(frame: CGRect(x: 100, y: 80, width:self.view.frame.width, height: self.view.frame.height/10))
        firstnewsTime.text = temp.firstPageNewsDate as String
        skView.addSubview(firstnewsTime)
        
        //上層蓋著一個按鈕
        let gotofirstNews = UIButton(frame: CGRect(x: 0, y: 60, width:self.view.frame.width, height: self.view.frame.height/10))
        skView.addSubview(gotofirstNews)
        
        
        
        
        
        //泡泡設定
        let node = BubbleNode.instantiate()
        node.VC = self
        node.labelNode.text = "重要新聞"
        node.labelNode.name = "要聞"
        node.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node)
        
        let node1 = BubbleNode.instantiate()
        node1.VC = self
        node1.labelNode.text = "娛樂"
        node1.labelNode.name = "udn娛樂新聞"
        node1.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node1)
        
        let node2 = BubbleNode.instantiate()
        node2.VC = self
        node2.labelNode.text = "地方"
        node2.labelNode.name = "udn地方新聞"
        node2.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node2)
        
        let node3 = BubbleNode.instantiate()
        node3.VC = self
        node3.labelNode.text = "國際"
        node3.labelNode.name = "udn國際新聞"
        node3.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node3)
        
        let node4 = BubbleNode.instantiate()
        node4.VC = self
        node4.labelNode.text = "運動"
        node4.labelNode.name = "運動新聞"
        node4.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node4)
        
        let node5 = BubbleNode.instantiate()
        node5.VC = self
        node5.labelNode.text = "教育"
        node5.labelNode.name = "教育新聞"
        node5.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node5)
        
        
        
        
        //以下無效
        let node6 = BubbleNode.instantiate()
        node6.VC = self
        node6.labelNode.text = "民生"
        node6.labelNode.name = "民生新聞"
        node6.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node6)
        
        let node7 = BubbleNode.instantiate()
        node7.VC = self
        node7.labelNode.text = "影劇"
        node7.labelNode.name = "影劇新聞"
        node7.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node7)
        
        let node8 = BubbleNode.instantiate()
        node8.VC = self
        node8.labelNode.text = "社會"
        node8.labelNode.name = "社會新聞"
        node8.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node8)
        
        let node9 = BubbleNode.instantiate()
        node9.VC = self
        node9.labelNode.text = "國際"
        node9.labelNode.name = "國際新聞"
        node9.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node9)
        
        let node10 = BubbleNode.instantiate()
        node10.VC = self
        node10.labelNode.text = "財經"
        node10.labelNode.name = "財經新聞"
        node10.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node10)
        
        let node11 = BubbleNode.instantiate()
        node11.VC = self
        node11.labelNode.text = "健康"
        node11.labelNode.name = "健康新聞"
        node11.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node11)
        
        let node12 = BubbleNode.instantiate()
        node12.VC = self
        node12.labelNode.text = "藝文"
        node12.labelNode.name = "藝文新聞"
        node12.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node12)
        
        let node13 = BubbleNode.instantiate()
        node13.VC = self
        node13.labelNode.text = "旅遊"
        node13.labelNode.name = "旅遊新聞"
        node13.fillColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.3)
        floatingCollectionScene.addChild(node13)
        
        
        
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
