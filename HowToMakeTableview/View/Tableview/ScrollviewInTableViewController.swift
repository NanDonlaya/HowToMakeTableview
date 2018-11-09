//
//  ScrollviewInTableViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 18/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit


var allData = Data()
var toIndex = 0

class ScrollviewInTableViewController: UIViewController {

    @IBOutlet weak var tableviewConnectView: UITableView!
    @IBOutlet weak var tableviewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableviewConnectView.register(UINib(nibName: "ScrollviewInTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "ScrollviewInTableViewCell")

        tableviewConnectView.isScrollEnabled = false
    }
  

}

extension ScrollviewInTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allData.travelChiangmai.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "ScrollviewInTableViewCell", for: indexPath) as! ScrollviewInTableViewCell
        
        cell.desLabel.text = allData.travelChiangmai[indexPath.row]
        cell.desLabel.numberOfLines = 0
        cell.desLabel.lineBreakMode = .byWordWrapping
        cell.desLabel.sizeToFit()
//        cell.heightLabel.constant = cell.desLabel.frame.height
        
        self.tableviewHeight.constant = self.tableviewConnectView.contentSize.height
        
        return cell
    }    
    
}
