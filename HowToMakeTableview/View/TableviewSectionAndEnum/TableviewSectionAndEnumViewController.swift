//
//  TableviewSectionAndEnumViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 14/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TableviewSectionAndEnumViewController: UIViewController {
    
    @IBOutlet weak var tableviewConnectView: UITableView!
    
    var allData = Data()
    var data = [SectionEnumulation: [[String : String]]]()
    var height = 80.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableviewConnectView.register(UINib(nibName: "TableviewSectionAndEnumCell", bundle: Bundle.main), forCellReuseIdentifier: "TableviewSectionAndEnumCell")
        
        sortData()
    }
    
    func sortData() {
        
        data[.action] = allData.movieData.filter({ $0["category"] == "action"})
        data[.comedy] = allData.movieData.filter({ $0["category"] == "comedy"})
        data[.drama] = allData.movieData.filter({ $0["category"] == "drama"})
        data[.indie] = allData.movieData.filter({ $0["category"] == "indie"})
    }
    
}
extension TableviewSectionAndEnumViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return SectionEnumulation.total.rawValue
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let section = SectionEnumulation(rawValue: section), let row = data[section] {
            
            return row.count
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "TableviewSectionAndEnumCell", for: indexPath) as! TableviewSectionAndEnumCell
        
        if let section = SectionEnumulation(rawValue: indexPath.section), let movie = data[section]?[indexPath.row] {
            cell.titleLb.text = movie["title"]
            cell.castLb.text = movie["cast"]
            cell.castLb.numberOfLines = 0
            cell.castLb.lineBreakMode = .byWordWrapping
            cell.castLb.sizeToFit()
            cell.castConHeigth.constant = cell.castLb.frame.height
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if let tableSection = SectionEnumulation(rawValue: section), let movieData = data[tableSection], movieData.count > 0 {
            return CGFloat(self.height)
        }
        return 100
        
    }
    
    
}


