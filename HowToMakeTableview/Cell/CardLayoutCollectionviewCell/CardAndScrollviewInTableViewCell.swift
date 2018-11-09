//
//  CardAndScrollviewInTableViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 18/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class CardAndScrollviewInTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var heightLabel: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
