//
//  File.swift
//  newsBubbles
//
//  Created by yifan on 2016/3/18.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit
import SpriteKit

class thirdViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,NSXMLParserDelegate{
//    private var skView: SKView!
//    private var floatingCollectionScene: BubblesScene!
    
    @IBOutlet weak var tbData: UITableView!
    
    var parser = NSXMLParser()
    var posts = NSMutableArray()
    var elements = NSMutableDictionary()
    var element = NSString()
    var title1 = NSMutableString()
    var date = NSMutableString()
    var link = NSMutableString()
    var source = NSMutableString()
    var img = NSMutableString()
    var count :Int = 0
    var url =  String()
    var targetString:String = ""
    var imageArray = NSMutableArray()
    var myWebView = UIWebView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("thirdView")
        
        
        if (valueForKey("即時新聞") as! String) == "即時新聞"{
                print("第三頁抓到了新聞")
        }
        
//        if (self.valueForKey("即時新聞")as! String) == "即時新聞"{
//        print("第三頁抓到了新聞")
//        }
        
//                skView = SKView(frame: UIScreen.mainScreen().applicationFrame)
//                skView.backgroundColor = SKColor.blueColor()
//                view.addSubview(skView)

            

//                floatingCollectionScene = BubblesScene(size: skView.bounds.size)
//                let navBarHeight = CGRectGetHeight(navigationController!.navigationBar.frame)
//                let statusBarHeight = CGRectGetHeight(UIApplication.sharedApplication().statusBarFrame)
        
//                let navBarHeight = CGRectGetHeight(self.accessibilityFrame.standardized)
//                let statusBarHeight = CGRectGetHeight(self.accessibilityFrame.standardized)
//                floatingCollectionScene.topOffset = navBarHeight + statusBarHeight
//                skView.presentScene(floatingCollectionScene)  //泡泡呈現的位置
//
//
//                // navigation item 的測試
        
    //第一種
//                navigationItem.rightBarButtonItem = UIBarButtonItem(
//                    barButtonSystemItem: .Done,
//                    target: self,
//                    action: "commitSelection"
//                )
    //第二種
//                navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)

//                title = "返回"

//                title = "返回上一頁"


    //第三種
//        let button:UIButton = UIButton()
//        
//        button.frame = CGRectMake(0, 0, 22, 22)
//        
//        button.addTarget(self, action: "back:", forControlEvents: UIControlEvents.TouchUpInside)  //back
//        
//        let leftItem: UIBarButtonItem = UIBarButtonItem()
//        
//        leftItem.style = .Plain
//        leftItem.title = "返回"
//        
//        self.navigationItem.leftBarButtonItem = leftItem

        
        
        
        
        //印出泡泡
//                for _ in 0..<15 {
//                    let node = BubbleNode.instantiate()
//                    node.labelNode.text = String(arc4random()%100)
//                    floatingCollectionScene.addChild(node)
//                }
//
//      
        
        beginParsing()
        tbData.delegate = self
        tbData.dataSource = self

//        

        
    }
    
    
 
    override func viewDidAppear(animated: Bool) {
        
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    
    
    
    //table view
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }


    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:myTableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell",forIndexPath: indexPath)  as! myTableViewCell
        
        cell.setCell(posts.objectAtIndex(indexPath.row).valueForKey("title") as! NSString as String, setDate: posts.objectAtIndex(indexPath.row).valueForKey("date") as! NSString as String, setSource: posts.objectAtIndex(indexPath.row).valueForKey("source") as! String, setImg: imageArray.objectAtIndex(indexPath.row) as! String)
        
        return cell
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    //parser
    
    //開始parse
    func parser(parser: NSXMLParser!, foundCharacters string: String!){  //每次parse都會做一遍
        
        //        print("parse start")
        if element.isEqualToString("title") {  //標題
            title1.appendString(string)
        } else if element.isEqualToString("pubDate") {  //時間
            date.appendString(string)
        }else if element.isEqualToString("link") {   //新聞超連結
            link.appendString(string)
        }else if element.isEqualToString("source") {   //新聞來源
            source.appendString(string)
        }else if element.isEqualToString("description"){     //圖片
            img.appendString(string)    //加入圖片網址
        }
    }
    

    //標籤開始  讀到新的開始標籤就初始化
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]){
        
        element = elementName
        if (elementName as NSString).isEqualToString("item")
        {
            elements = NSMutableDictionary()
            elements = [:]
            title1 = NSMutableString()
            title1 = ""
            date = NSMutableString()
            date = ""
            link = NSMutableString()
            link = ""
            source = NSMutableString()
            source = ""
            img = NSMutableString()
            img = ""
            
        }
        
    }
    
    
    //標籤結束
    func parser(parser: NSXMLParser!, didEndElement elementName: String!, namespaceURI: String!, qualifiedName qName: String!){
        
        if (elementName as NSString).isEqualToString("item") {
            if !title1.isEqual(nil) {
                elements.setObject(title1, forKey: "title")
//                                print(title1)
            }
            if !date.isEqual(nil) {
                elements.setObject(date, forKey: "date")
//                                print(date)
            }
            if !link.isEqual(nil) {
                elements.setObject(link, forKey: "link")
//                                    print(link)
            }
            if !source.isEqual(nil) {
                elements.setObject(source, forKey: "source")
//                                                print(source)
            }
            if !img.isEqual(nil) {
                elements.setObject(img, forKey: "description")
                targetString = ""
                getimg(img as String)
                
            }
            posts.addObject(elements)  //將資料存入object 中
            
        }
        
    }
    
    
    //自訂方法
    
    func back(){
        print("back")
    }
    
    
    func getimg(newsUrl:String)-> String{
        
        //開始找到img src 的位置
        let imageStringStart = "img"
        let imgStringEnd = "width"
        
        let newsUrlNSString = newsUrl as NSString   //抓到傳進來的內容 轉成NSString
        let startrRange = newsUrlNSString.rangeOfString(imageStringStart)  //找到範圍內的 "img"
        let endRang = newsUrlNSString.rangeOfString(imgStringEnd)
        
        
        if (startrRange.location != NSNotFound){
            //            print(range.location)
            let start = startrRange.location
            let end = endRang.location
            //            print("start :\(start)")
            //            print("end :\(end)")
            var imgLocation :Int = 0
            imgLocation = end - start
            //            print(imgLocation)
            
            let rangeOfString = NSRange(location: startrRange.location+9, length: imgLocation-11)               //開始與長度
            targetString = newsUrlNSString.substringWithRange(rangeOfString)
            //                   print(targetString)          //取得圖片網頁
            
            //            if let checkedUrl = NSURL(string: targetString) {
            //                imageView.contentMode = .ScaleAspectFit
            //                downloadImage(checkedUrl)
            //            }
            //            print("拿到圖片了:\(targetString)\n")
            //            print("-----------")
            
        }else{
            //            print("沒有圖片:\(targetString)\n")
            //             print("-----------")
            targetString = "http://www.majorgeeks.com/news/file/903_yahoo-new-logo.jpg"
        }
        imageArray.addObject(targetString)
        return targetString
    }
    
    func beginParsing(){
        posts = []
        
        
        
        url = "https://tw.news.yahoo.com/rss/"
        do{
            try parser = NSXMLParser(contentsOfURL:(NSURL(string:url))!)!
        }catch{
            
            // create the alert
            let connetError = UIAlertController(title: nil, message: "連線失敗, 請先檢查是否連線", preferredStyle: UIAlertControllerStyle.Alert)
            // add an action (button)
            connetError.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            // show the alert
            self.presentViewController(connetError, animated: true, completion: nil)
            
        }
        parser.delegate = self
        
        print("start parse")
        parser.parse()   //將資料丟給 parse處理
        tbData!.reloadData()  //更新tableView資料
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    dynamic private func commitSelection() {
//        floatingCollectionScene.performCommitSelectionAnimation()
//    }
//    
}

