//
//  backTableVc.swift
//  newsBubbles
//
//  Created by kevin on 2016/3/8.
//  Copyright © 2016年 kevin. All rights reserved.
//

import Foundation



class backTableVc :UITableViewController {
    
    var tableArray = [String]()
    
    override func viewDidLoad() {
        tableArray = ["hello ","second","world"]
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell",forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = tableArray[indexPath.row]
        
        return cell
    }
    
    
    
    
    
}

