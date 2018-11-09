//
//  ColectionInTableViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 19/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class ColectionInTableViewController: UIViewController {
    
    @IBOutlet weak var tableviewConnectView: UITableView!
    
    var allData = Data()
    var data = [SectionEnumulation: [[String : String]]]()
    
    let screen = UIScreen.main.bounds.size

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableviewConnectView.register(UINib(nibName: "TableViewInCollectionviewCell", bundle: Bundle.main), forCellReuseIdentifier: "TableViewInCollectionviewCell")
        
        sortData()
    }
    
    func sortData() {
        
        data[.action] = allData.movieData.filter({$0["category"] == "action"})
        data[.comedy] = allData.movieData.filter({$0["category"] == "comedy"})
        data[.drama] = allData.movieData.filter({$0["category"] == "drama"})
        data[.indie] = allData.movieData.filter({$0["category"] == "indie"})
    }
    
}

extension ColectionInTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return SectionEnumulation.total.rawValue
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if let sectionName = SectionEnumulation(rawValue: section), let row = data[sectionName] {
//
//            return row.count
//        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "TableViewInCollectionviewCell", for: indexPath) as! TableViewInCollectionviewCell
        
        if let sectionName = SectionEnumulation(rawValue: indexPath.section), let row = data[sectionName] {
            cell.movieData = row
            
            print("NAN ROW \(row)")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.tableviewConnectView.frame.width, height: 44))
        let label = UILabel(frame: CGRect(x: 16, y: 0, width: self.tableviewConnectView.frame.width, height: 44))
        if let section = SectionEnumulation(rawValue: section) {
            switch section {
            case .action:
                label.text = "Action"
            case .comedy:
                label.text = "Comedy"
            case .drama:
                label.text = "Drama"
            case .indie:
                label.text = "Indie"
            default:
                label.text = ""
            }
            label.textColor = UIColor.white
            label.backgroundColor = UIColor.gray
            view.backgroundColor = UIColor.gray
        }
        
        view.addSubview(label)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if let sectionName = SectionEnumulation(rawValue: section), let row = data[sectionName] {
//            print("HEIGHT FOR HEADER\(row)")
            if row.count == 0 {
                return 0
            }
            else {
                return 44
            }
        }
        return 0
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (screen.width/3) - 5
    }
}
