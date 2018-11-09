//
//  SectionUITableviewViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 13/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class SectionUITableviewViewController: UIViewController {

    @IBOutlet weak var tableviewConnectView: UITableView!
    
    var sectionAr = ["day 1", "day 2", "day 3"]
    var category = [["กลางวัน", "เย็น"],
                    ["เช้า", "กลางวัน", "เย็น"],
                    ["เช้า", "กลางวัน"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigationBar(title: "รายการอาหาร")
    }
    

}

extension SectionUITableviewViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sectionAr[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return sectionAr.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return category[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionUITableviewCell", for: indexPath)
        cell.selectionStyle = .none
        
        cell.textLabel?.text = category[indexPath.section][indexPath.row]
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 60.0
    }
}
