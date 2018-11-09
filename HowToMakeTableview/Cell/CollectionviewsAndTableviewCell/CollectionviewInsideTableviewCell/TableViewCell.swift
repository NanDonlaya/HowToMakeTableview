//
//  TableViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 17/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var collectionviewConnectTableview: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
