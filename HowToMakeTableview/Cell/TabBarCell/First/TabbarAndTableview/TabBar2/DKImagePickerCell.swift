//
//  DKImagePickerCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 31/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class DKImagePickerCell: UICollectionViewCell {

    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
//        
//        setNeedsLayout()
//        layoutIfNeeded()
//        
//        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
//        var frame = layoutAttributes.frame
//        frame.size.height = ceil(size.height)
//        layoutAttributes.frame = frame
//        
//        return layoutAttributes
//    }

}
