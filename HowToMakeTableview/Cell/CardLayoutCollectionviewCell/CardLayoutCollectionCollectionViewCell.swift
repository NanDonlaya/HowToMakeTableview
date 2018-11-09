//
//  CardLayoutCollectionCollectionViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 11/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

protocol DelegateCardLayout {
    
    func updateHeight()
}

class CardLayoutCollectionCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var showDescription: UILabel!
    @IBOutlet weak var descriptionHeightConstrain: NSLayoutConstraint!
    
    var delegateSetupHeight: DelegateCardLayout?
    var hideLabel = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        self.showDescription.numberOfLines = 0
        self.showDescription.lineBreakMode = .byWordWrapping
        self.showDescription.sizeToFit()
        
        if hideLabel {
            self.descriptionHeightConstrain.constant = self.showDescription.frame.height
            hideLabel = false
            
        } else {
            self.descriptionHeightConstrain.constant = 0
            hideLabel = true
        }
        
        delegateSetupHeight?.updateHeight()    
    }
    

}
