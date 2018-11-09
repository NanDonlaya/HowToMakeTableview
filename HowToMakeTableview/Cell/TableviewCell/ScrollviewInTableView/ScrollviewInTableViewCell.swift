//
//  ScrollviewInTableViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 18/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class ScrollviewInTableViewCell: UITableViewCell {

    @IBOutlet weak var desLabel: UILabel!
    @IBOutlet weak var heightLabel: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
