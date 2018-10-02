//
//  CategoryDetailViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 27/9/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class CategoryDetailViewController: UIViewController {
    
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var showLabelName: UILabel!
    @IBOutlet weak var showLabelData: UILabel!
    @IBOutlet weak var labelHeight: NSLayoutConstraint!
    
    var imageString: String?
    var nameString: String?
    var dataString: String?
    var typeString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showImage.image = UIImage(named: imageString ?? "errorimage")
        
        showLabelName.text = nameString ?? "Sorry! No Dog's name"
        
        showLabelData.text = dataString ?? "Sorry! No Profile"
        showLabelData.numberOfLines = 0
        showLabelData.lineBreakMode = .byWordWrapping
        showLabelData.sizeToFit()
        labelHeight.constant = showLabelData.frame.height
    }
    
    @IBAction func moreClicked(_ sender: UIButton) {

        let nextView = UIStoryboard.init(name: "CustomTableview", bundle: Bundle.main).instantiateViewController(withIdentifier: "imageID") as? CategoryImageViewController
            nextView?.typeOfString = typeString


        self.navigationController?.pushViewController(nextView!, animated: true)
    }
    
    
}
