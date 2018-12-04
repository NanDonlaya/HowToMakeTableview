//
//  CustomTableViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 26/9/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit
import Spring


class CustomTableviewCell: UITableViewCell {

    //REMARK: - CustomTableviewController
    @IBOutlet weak var placeImageView: UIImageView!
    @IBOutlet weak var province: UILabel!
    @IBOutlet weak var distance: UILabel!
    
    //REMARK: - CategoryTableviewController
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstbutton: DesignableButton!
    @IBOutlet weak var firstLabelHeight: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
