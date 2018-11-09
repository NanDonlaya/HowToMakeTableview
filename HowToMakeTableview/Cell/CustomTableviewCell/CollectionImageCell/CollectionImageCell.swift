//
//  CollectionImageCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 2/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class CollectionImageCell: UICollectionViewCell {

    @IBOutlet weak var dogImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setImage(image: String) {
        
        self.dogImageView.image = UIImage(named: image)
    }
    

}
