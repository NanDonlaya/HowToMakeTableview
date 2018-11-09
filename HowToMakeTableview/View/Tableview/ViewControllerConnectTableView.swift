//
//  ViewControllerConnectTableView.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 17/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class ViewControllerConnectTableView: UIViewController {
    
    
    @IBOutlet weak var countriesLabel: UILabel!
    @IBOutlet weak var countriesImage: UIImageView!
    @IBOutlet weak var countriesDetailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        countriesLabel.text = countries[myIndex]
        countriesDetailLabel.text = details[myIndex]
        countriesImage.image = UIImage(named: countries[myIndex] + ".jpg")
    }
    

}
