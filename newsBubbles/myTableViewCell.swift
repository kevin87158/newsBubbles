//
//  myTableViewCell.swift
//  newsBubbles
//
//  Created by kevin on 2016/3/22.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var cellDate: UILabel!
    @IBOutlet weak var cellSource: UILabel!
    @IBOutlet weak var celltittle: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    
    }
    
    
    func setCell(setTittle:String,setDate:String,setSource:String,setImg:String){

        
        let image = UIImage(data: NSData(contentsOfURL: NSURL(string: setImg)!)!)
        self.img.image = image
        self.img.contentMode = .ScaleAspectFit
        self.img.frame = CGRectMake(0, 0, self.frame.size.width/2, self.frame.size.height/2)

        
        self.imageView?.hidden
        
        self.celltittle.text = setTittle
        self.cellDate.text = setDate
        self.cellSource.text = setSource
        
    }
    
    

}
