//
//  TabbarAndTableviewViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 22/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TabbarAndTableviewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableviewConnectView: UITableView!
    @IBOutlet weak var tableviewHeight: NSLayoutConstraint! //ไม่ต้องใช้ เพราะมีแต่ tableview
    
    var allData = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableviewConnectView.register(UINib(nibName: "TabbarTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "TabbarTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        print("NANTON \(allData.tabBarData2[0]["image"]?.count)") ไม่ใช้
        return allData.tabBarData1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "TabbarTableViewCell", for: indexPath) as! TabbarTableViewCell
        
//        cell.firstLabel.text = allData.tabBarData2[indexPath.section]["title"]?[indexPath.row] ไม่ใช้
        cell.myImage.image = UIImage(named: allData.tabBarData1[indexPath.row]["image"] ?? "ranong")
        cell.firstLabel.text = allData.tabBarData1[indexPath.row]["title"]
        cell.firstLabel.sizeToFit()
        cell.heightlabel1.constant = cell.secondLabel.frame.height
        cell.secondLabel.text = allData.tabBarData1[indexPath.row]["address"]
        cell.secondLabel.sizeToFit()
        cell.heightLabel2.constant = cell.secondLabel.frame.height
        cell.thirdLabel.text = allData.tabBarData1[indexPath.row]["category"]
        cell.thirdLabel.sizeToFit()
        cell.heightLabel3.constant = cell.thirdLabel.frame.height
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
    }
}
