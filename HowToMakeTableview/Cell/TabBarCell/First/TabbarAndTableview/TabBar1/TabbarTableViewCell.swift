//
//  TabbarTableViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 22/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TabbarTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var heightlabel1: NSLayoutConstraint!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var heightLabel2: NSLayoutConstraint!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var heightLabel3: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myImage.cercleRoundedImage()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
