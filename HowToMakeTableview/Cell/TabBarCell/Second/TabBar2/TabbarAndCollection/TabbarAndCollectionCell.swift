//
//  TabbarAndCollectionCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 25/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TabbarAndCollectionCell: UICollectionViewCell {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var heightTopLB: NSLayoutConstraint!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var heightBottomLB: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        
        setNeedsLayout()
        layoutIfNeeded()
        
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        var frame = layoutAttributes.frame
        frame.size.height = ceil(size.height)
        layoutAttributes.frame = frame
        
        return layoutAttributes
    }

}
