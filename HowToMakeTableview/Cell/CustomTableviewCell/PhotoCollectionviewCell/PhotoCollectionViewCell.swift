//
//  PhotoCollectionViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 4/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setImage(image: String) {
        
        photoView.image = UIImage(named: image)
    }

}
