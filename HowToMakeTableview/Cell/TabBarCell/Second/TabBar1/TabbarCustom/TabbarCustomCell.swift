//
//  TabbarCustomCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 23/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TabbarCustomCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var heightTopLabel: NSLayoutConstraint!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var heightBottomLabel: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
