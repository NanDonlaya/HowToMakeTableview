//
//  CollectionviewInTableviewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 19/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class CollectionviewInTableviewCell: UICollectionViewCell {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var heightLabel: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
