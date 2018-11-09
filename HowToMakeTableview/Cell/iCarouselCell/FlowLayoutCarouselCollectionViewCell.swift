//
//  FlowLayoutCarouselCollectionViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 10/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class FlowLayoutCarouselCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var showView: UIView!
    @IBOutlet weak var showImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        DispatchQueue.main.async {
            
            self.showView.layer.cornerRadius = 15.0
            self.showView.layer.shadowColor = UIColor.gray.cgColor
            self.showView.layer.shadowOpacity = 0.5
            self.showView.layer.shadowOffset = .zero
            self.showView.layer.shadowPath = UIBezierPath(rect: self.showView.bounds).cgPath
            self.showView.layer.shouldRasterize = true
        }
    }
    
    

}
