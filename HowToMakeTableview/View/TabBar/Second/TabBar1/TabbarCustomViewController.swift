//
//  TabbarCustomViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 23/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TabbarCustomViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableviewConnectView: UITableView!
    
    var allData = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBar(title: "Shop")

        tableviewConnectView.register(UINib(nibName: "TabbarCustomCell", bundle: Bundle.main), forCellReuseIdentifier: "TabbarCustomCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allData.brandShop.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "TabbarCustomCell", for: indexPath) as! TabbarCustomCell
        
        cell.selectionStyle = .none
        
        cell.myImage.image = UIImage(named: allData.brandShop[indexPath.row]["image"] ?? "ranong")
        cell.topLabel.text = allData.brandShop[indexPath.row]["name"]
        cell.topLabel.font = UIFont(font: .alNileBold, size: 25.0)
        cell.topLabel.textColor = UIColor.white
        cell.bottomLabel.text = allData.brandShop[indexPath.row]["address"]
        cell.bottomLabel.font = UIFont(name: "AlexBrush-Regular", size: 20.0)
        cell.bottomLabel.textColor = UIColor.white
        cell.bottomLabel.sizeToFit()
        cell.heightBottomLabel.constant = cell.bottomLabel.frame.height
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.tableviewConnectView.frame.width, height: self.tableviewConnectView.frame.height))
        view.backgroundColor = UIColor.gray
        let label = UILabel(frame: CGRect(x: 16.0, y: 0, width: self.tableviewConnectView.frame.width, height: 80.0))
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 25.0)
        label.text = "TODAY"
        view.addSubview(label)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 70.0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100.0
    }
    
}
