//
//  webViewController.swift
//  newsBubbles
//
//  Created by kevin on 2016/3/24.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit

class webViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myWebView.loadRequest(NSURLRequest(URL: NSURL(string:temp.loadUrl)!))


    }

    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let webviewSegue = segue.destinationViewController as! webViewController
//        webviewSegue.catchSegueUrl = self.segueForUnwindingToViewController(self, fromViewController:thirdViewController, identifier: "webViewSegue")
//        
        
        
//    }
    
    
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
