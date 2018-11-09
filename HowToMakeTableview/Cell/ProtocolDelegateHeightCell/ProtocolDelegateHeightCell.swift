//
//  ProtocolDelegateHeightCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 10/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

protocol DelegateHeight {
    
    func updateHeight()
}

class ProtocolDelegateHeightCell: UITableViewCell {
    
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var constrainHeightLabel: NSLayoutConstraint!
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var showDescription: UILabel!
    @IBOutlet weak var constrainHeightDescription: NSLayoutConstraint!
    
    var delegateSetupHeight: DelegateHeight?
    var isShow = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        self.showDescription.numberOfLines = 0
        self.showDescription.lineBreakMode = .byWordWrapping
        self.showDescription.sizeToFit()
        
        if isShow {
            self.constrainHeightDescription.constant = self.showDescription.frame.height
            self.showButton.setTitle("Hide", for: .normal)
            isShow = false
        } else {
            self.constrainHeightDescription.constant = 0
            self.showButton.setTitle("Show", for: .normal)
            isShow = true
        }
        
        delegateSetupHeight?.updateHeight()
    }
    
    
}
