//
//  TableviewCardLayoutViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 24/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TableviewCardLayoutViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableviewConnectView: UITableView!
    
    var allData = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableviewConnectView.register(UINib(nibName: "TableviewCardLayoutCell", bundle: Bundle.main), forCellReuseIdentifier: "TableviewCardLayoutCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allData.decorateImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "TableviewCardLayoutCell", for: indexPath) as! TableviewCardLayoutCell
        
        cell.myImage.image = UIImage(named: allData.decorateImage[indexPath.row])
        cell.label.text = allData.decorateDescription[indexPath.row]
        cell.label.sizeToFit()
        cell.heightLabel.constant = cell.label.frame.height
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }

}
