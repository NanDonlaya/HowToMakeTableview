//
//  FoodDescriptionTableViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 9/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit


class FoodDescriptionTableViewCell: UITableViewCell {

    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var showConLabel: NSLayoutConstraint!
    @IBOutlet weak var showbutton: UIButton!
    @IBOutlet weak var showView: UIView!
    @IBOutlet weak var showConHight: NSLayoutConstraint!
    @IBOutlet weak var showDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    

}
