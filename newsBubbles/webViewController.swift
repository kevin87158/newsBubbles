//
//  webViewController.swift
//  newsBubbles
//
//  Created by kevin on 2016/3/24.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit

class webViewController: UIViewController,UIWebViewDelegate{

    @IBOutlet weak var myWebView: UIWebView!
    
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loading.startAnimating()
//        start(myWebView)
        
//        dispatch_async(dispatch_get_main_queue()) { () -> Void in
        
            self.myWebView.loadRequest(NSURLRequest(URL: NSURL(string:temp.loadUrl)!))
//            self.loading.stopAnimating()
//            self.loading.hidesWhenStopped = true
//        }

        
//        finish(myWebView)

    }

    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let webviewSegue = segue.destinationViewController as! webViewController
//        webviewSegue.catchSegueUrl = self.segueForUnwindingToViewController(self, fromViewController:thirdViewController, identifier: "webViewSegue")
//        
        
        
//    }
    
    
    
    func start(_:UIWebView){ //
        loading.hidden = false
        loading.startAnimating()
        print("the web view is start")
    }
    func finish(_:UIWebView){
        loading.hidden = true
        loading.stopAnimating()
        print("the web view is stop")
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
