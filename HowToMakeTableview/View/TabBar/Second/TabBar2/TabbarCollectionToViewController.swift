//
//  TabbarCollectionToViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 26/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit
import UIFontComplete


class TabbarCollectionToViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var heightDetail: NSLayoutConstraint!
    
    var allData = Data()
    var imageString: String?
    var nameString: String?
    var priceString: String?
    var detailString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigationBarBack(title: "Item Detail")
        
        firstLabel.text = "Name :"
        firstLabel.font = UIFont(font: .avenirBookOblique, size: 16.0)
        secondLabel.text = "Price :"
        secondLabel.font = UIFont(font: .avenirBookOblique, size: 16.0)
        thirdLabel.text = "Detail :"
        thirdLabel.font = UIFont(font: .avenirBookOblique, size: 16.0)
        
        imageView.image = UIImage(named: imageString ?? "ranong")
        nameLabel.text = nameString ?? "Sorry! No Item"
        priceLabel.text = priceString ?? "Sorry! No Price"
        detailLabel.text = detailString ?? "Sory! No Detail"
        detailLabel.numberOfLines = 0
        detailLabel.lineBreakMode = .byWordWrapping
        detailLabel.sizeToFit()
        heightDetail.constant = detailLabel.frame.height
    }
    

}
