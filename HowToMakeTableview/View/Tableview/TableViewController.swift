//
//  TableviewControllerTableViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 26/9/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var diner = ["Suzuran sushi (ซูซูรัน)", "Sushi hiro", "Kabocha sushi (คาโบฉะ)", "Kitchen hut", "Hokkori (ฮกโคะริ)", "Minato (มินาโตะ)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80.0

        
    }

    //MARK: - Tableview Datasource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return diner.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellItems", for: indexPath)
        
        cell.textLabel?.text = diner[indexPath.row]
        
//        cell.backgroundColor = UIColor.yellow มีสลับสี Defaults ไหม
        
        if indexPath.row == 0 {
            cell.backgroundColor = UIColor.yellow
        }
        else if indexPath.row == 1 {
            cell.backgroundColor = UIColor.green
        }
        else if indexPath.row == 2 {
            cell.backgroundColor = UIColor.yellow
        }
        else if indexPath.row == 3 {
            cell.backgroundColor = UIColor.green
        }
        else if indexPath.row == 4 {
            cell.backgroundColor = UIColor.yellow
        }
        else if indexPath.row == 5 {
            cell.backgroundColor = UIColor.green
        }
        else {
            cell.backgroundColor = UIColor.white
        }
        
        return cell
    }


}
