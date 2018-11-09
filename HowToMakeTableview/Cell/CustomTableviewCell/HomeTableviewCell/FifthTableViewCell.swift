//
//  FifthTableViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 12/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class FifthTableViewCell: UITableViewCell {
    
    @IBOutlet weak var homeImage: UIImageView!
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var homeButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
