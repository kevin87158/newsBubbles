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
    private var skView: SKView!
    private var floatingCollectionScene: BubblesScene!
    
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
//    var urlForSegue = String()
    let loadingView : UIActivityIndicatorView = UIActivityIndicatorView()


    
    override func viewDidLoad() {
        super.viewDidLoad()


//       
//                skView = SKView(frame: UIScreen.mainScreen().applicationFrame)
//                skView.backgroundColor = SKColor.blueColor()
//                view.addSubview(skView)
//
//            
////
//                floatingCollectionScene = BubblesScene(size: skView.bounds.size)
//                let navBarHeight = CGRectGetHeight(navigationController!.navigationBar.frame)
//                let statusBarHeight = CGRectGetHeight(UIApplication.sharedApplication().statusBarFrame)
//        
////                let navBarHeight = CGRectGetHeight(self.accessibilityFrame.standardized)
////                let statusBarHeight = CGRectGetHeight(self.accessibilityFrame.standardized)
//                floatingCollectionScene.topOffset = navBarHeight + statusBarHeight
//                skView.presentScene(floatingCollectionScene)  //泡泡呈現的位置
////
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




//    第三種
        
//        var leftItem: UIBarButtonItem = UIBarButtonItem()
//        leftItem.style = .Plain
//        leftItem.title = "返回"
//        leftItem = self.navigationItem.leftBarButtonItem!
//hhh
//        
        

  

//        self.navigationController?.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addFavoriteNewCatgory:")

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
                                barButtonSystemItem: .Add,
                                target: self,
                                action: "addFavoriteNewCatgory:"
                            )
        
        
        print("parse start")
// 載入畫面
        //方法一
        //        loadingView()
        //方法二
//        progressHUD = ProgressHUD(text: "載入中請稍候")
//        
//        progressHUD!.show()
//        
//        self.view.addSubview((progressHUD as? UIView)!)
//        (progressHUD as? UIVisualEffectView)?.hidden = true

        
//        loadingView.frame = CGRectMake(100, 100, 100, 100)
//        loadingView.color = UIColor.blueColor()
//        loadingView.transform = CGAffineTransformMakeScale(5.5,5.5)
//        //        loadingView.hidesWhenStopped = true
//        loadingView.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
//        self.view.addSubview(loadingView)
        
        
//        loadingView.startAnimating()
        
        
        
        
        
        
        let parseUrl = chooseUrl()
        beginParsing(parseUrl)
        tbData!.reloadData()  //更新tableView資料

        
 
        
        
        tbData.delegate = self
        tbData.dataSource = self

    }
    
    
 
    override func viewDidAppear(animated: Bool) {
        print("thirdView")
//        if (temp.catgory) == "即時新聞"{
//            print("第三頁抓到了")
//        }
        



    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("segue")
        
        if segue.identifier == "webViewSegue"{
            print("\(temp.loadUrl)")
        }
        
        
    }
    
    
    
    
    //table view
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return posts.count
    }


    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:myTableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell",forIndexPath: indexPath)  as! myTableViewCell
        

        dispatch_async(dispatch_get_main_queue()) { () -> Void in
        cell.setCell(self.posts.objectAtIndex(indexPath.row).valueForKey("title") as! NSString as String, setDate: self.posts.objectAtIndex(indexPath.row).valueForKey("date") as! NSString as String, setSource: self.posts.objectAtIndex(indexPath.row).valueForKey("source") as! String, setImg: self.imageArray.objectAtIndex(indexPath.row) as! String)
        }
        
        return cell
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

//            urlForSegue = ""
            temp.loadUrl = posts.objectAtIndex(indexPath.row).valueForKey("link")as! String
        
        
        //使用手寫 呈現webView
            myWebView.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height)
            myWebView.loadRequest(NSURLRequest(URL: NSURL(string: posts.objectAtIndex(indexPath.row).valueForKey("link")as! String)!))
            self.view.addSubview(myWebView)

        //        gotoWebViewController?.segueForUnwindingToViewController(gotoWebViewController!, fromViewController: self, identifier: "webViewSegue")
        
  
        //使用segue 傳資料給webView
//                 let gotoWebViewController = self.storyboard?.instantiateViewControllerWithIdentifier("webViewController")
//        urlForSegue = posts.objectAtIndex(indexPath.row).valueForKey("link")as! String

//        let webSegue = self.segueForUnwindingToViewController(gotoWebViewController!, fromViewController: self, identifier: "webViewSegue")
//
//        self.prepareForSegue(webSegue!, sender: self)
//        
        
        
    }
    
    
    
    
    
    //parser
    
    //開始parse
    func parser(parser: NSXMLParser, foundCharacters string: String){  //每次parse都會做一遍
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
    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?){
        
        if (elementName as NSString).isEqualToString("item") {
            if !title1.isEqual(nil) {
                elements.setObject(title1, forKey: "title")
                 print(title1)
            }
            if !date.isEqual(nil) {
                elements.setObject(date, forKey: "date")
                 print(date)
            }
            if !link.isEqual(nil) {
                elements.setObject(link, forKey: "link")
                 print(link)
            }
            if !source.isEqual(nil) {
                elements.setObject(source, forKey: "source")
                print(source)
            }
            if !img.isEqual(nil) {
                elements.setObject(img, forKey: "description")
                getimg(img as String)
                print(img)
                
            }
            posts.addObject(elements)  //將資料存入object 中
            print(temp.firstPageNewsDate)
            print(temp.firstPageNewsTitle)
            temp.firstPageNewsTitle = title1 as String
            temp.firstPageNewsDate = date as String
            temp.firstPageNewsUrl = link as String
            
        }
    }
    func parserDidEndDocument(parser: NSXMLParser) {
        loadingView.stopAnimating()
        print("end ")
    }
    
    //自訂方法
    
//    func loadingView(){
//        alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .Alert)
//        
//        alert.view.tintColor = UIColor.blackColor()
//        let loadingIndicator: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(10, 5, 50, 50)) as UIActivityIndicatorView
//        loadingIndicator.hidesWhenStopped = true
//        
//        loadingIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
//        loadingIndicator.startAnimating();
//        
//        alert.view.addSubview(loadingIndicator)
//        presentViewController(alert, animated: true, completion: nil)
    
//        dismissViewControllerAnimated(false, completion: nil)
//        dismissViewControllerAnimated(false,completion:nil)
//    }
    
    
    func addFavoriteNewCatgory(sender:UINavigationItem){
        
        let alert = UIAlertController(title: "加入我的最愛", message: "是否要加入我的最愛?", preferredStyle: UIAlertControllerStyle.Alert)
//        alert.addAction(UIAlertAction(title: "確定", style: UIAlertActionStyle.Default, handler: nil))
        alert.addAction(UIAlertAction(title: "確定", style: UIAlertActionStyle.Default, handler: { (action:UIAlertAction!) -> Void in
            
            let alert1 = UIAlertController(title: "", message: "加入成功", preferredStyle: UIAlertControllerStyle.Alert)
            alert1.addAction(UIAlertAction(title: "確定", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert1, animated: true, completion: nil)

        }))
        
        alert.addAction(UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
        print("將類別加入我的最愛")


        temp.favoriteCategory = temp.catgory
        
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
            //            if let checkedUrl = NSURL(string: targetString) {
            //                imageView.contentMode = .ScaleAspectFit
            //                downloadImage(checkedUrl)
            //            }
            print("img  :\(targetString)")
        }else{
            //            print("沒有圖片:\(targetString)\n")
            //             print("-----------")
            targetString = "http://www.majorgeeks.com/news/file/903_yahoo-new-logo.jpg"
        }
        imageArray.addObject(targetString)
        return targetString
    }
    
    func beginParsing(urlstring:String){
        posts = []
        print(urlstring)
        url = urlstring
//        url = "https://tw.news.yahoo.com/rss/"
//        do{
//            try
                parser = NSXMLParser(contentsOfURL:(NSURL(string:url))!)!
//        }catch{
//            
            // create the alert
//            let connetError = UIAlertController(title: nil, message: "連線失敗, 請先檢查是否連線", preferredStyle: UIAlertControllerStyle.Alert)
//            // add an action (button)
//            connetError.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//            // show the alert
//            self.presentViewController(connetError, animated: true, completion: nil)
        
//        }
        parser.delegate = self
        print("being parse")
        parser.parse()   //將資料丟給 parse處理

    }

    func chooseUrl()->String{
        var rssSite:String = ""
        print("chooserUrl: \(temp.catgory)")
        switch temp.catgory{
        case "即時新聞":
             rssSite = "https://tw.news.yahoo.com/rss/"
//            print(temp.catgory)
            break
            
        case "政治新聞":
            rssSite = "https://tw.news.yahoo.com/rss/politics"
//            print(temp.catgory)
            break
            
        case "地方新聞":
            rssSite = "https://tw.news.yahoo.com/rss/local"
//            print(temp.catgory)
            break
            
        case "科技新聞":
            rssSite = "https://tw.news.yahoo.com/rss/technology"
//            print(temp.catgory)
            break
            
        case "體育新聞":
            rssSite = "https://tw.news.yahoo.com/rss/sports"
//            print(temp.catgory)
            break
            
        case "教育新聞":
            rssSite = "https://tw.news.yahoo.com/rss/education"
//            print(temp.catgory)
            break
            
        case "即時新聞":
            rssSite = "https://tw.news.yahoo.com/rss/"
//            print(temp.catgory)
            break
            
        case "民生新聞":
            rssSite = "https://tw.news.yahoo.com/rss/lifestyle"
//            print(temp.catgory)
            break
            
        case "影劇新聞":
            rssSite = "https://tw.news.yahoo.com/rss/entertainment"
//            print(temp.catgory)
            break
            
        case "社會新聞":
            rssSite = "https://tw.news.yahoo.com/rss/society"
//            print(temp.catgory)
            break
            
        case "國際新聞":
            rssSite = "https://tw.news.yahoo.com/rss/world"
//            print(temp.catgory)
            break
            
        case "財經新聞":
            rssSite = "https://tw.news.yahoo.com/rss/finance"
//            print(temp.catgory)
            break
            
        case "健康新聞":
            rssSite = "https://tw.news.yahoo.com/rss/health"
//            print(temp.catgory)
            break
            
        case "藝文新聞":
            rssSite = "https://tw.news.yahoo.com/rss/art"
//            print(temp.catgory)
            break
            
        default:"旅遊新聞"
        rssSite = "https://tw.travel.yahoo.com/rss/topic/taiwan/all#"
//        print(temp.catgory)
            break
        }
        return rssSite
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

