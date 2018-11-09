//
//  SectionCollectionViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 22/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class SectionCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var heightTopLabel: NSLayoutConstraint!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var heightBottomLabel: NSLayoutConstraint!
    @IBOutlet weak var myImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
