//
//  MainViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 4/12/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var categories = Data()

    @IBOutlet weak var tableviewConnectView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        print("categories.topics.count: \(categories.topics.count)")
        return categories.topics.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("categories.content.count:\(categories.content.count)")
        return categories.topics[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath)
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
       return categories.topics[section]
    }

}
