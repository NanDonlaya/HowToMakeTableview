//
//  TabbarTableCollectionAndViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 29/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TabbarTableCollectionAndViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameTitle: UILabel!
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var tableviewConnectView: UITableView!
    @IBOutlet weak var tableviewHeight: NSLayoutConstraint!
    
    var array = ["Dress", "Shoes", "Bag"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewConnectView.reloadData()

        helloLabel.text = "Hello!"
        nameTitle.text = "Khun"
        name.text = "Nan"
        
        tableviewConnectView.register(UINib(nibName: "TabBarTableViewCells", bundle: nil), forCellReuseIdentifier: "TabBarTableViewCells")
        
        tableviewConnectView.isScrollEnabled = false
        
        
        
//        tableviewConnectView.rowHeight = 800
    }

}

extension TabbarTableCollectionAndViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "TabBarTableViewCells", for: indexPath) as! TabBarTableViewCells
        cell.titleLabel.text = array[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        self.tableviewHeight.constant = self.tableviewConnectView.contentSize.height
//        self.view.layoutIfNeeded()
//        print("tableview height: \(self.tableviewConnectView.contentSize.height), index: \(indexPath.row)")

        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
}
