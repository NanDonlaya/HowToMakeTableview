//
//  SectionTableViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 22/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class SectionTableViewController: UIViewController {

    @IBOutlet weak var tableviewConnectView: UITableView!
    
    let screen = UIScreen.main.bounds.size
    var allData = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableviewConnectView.register(UINib(nibName: "SectionInTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "SectionInTableViewCell")
        
        tableviewConnectView.rowHeight = 600.0
    }
    
}

extension SectionTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allData.frenchAllPicture.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "SectionInTableViewCell", for: indexPath) as! SectionInTableViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.tableviewConnectView.frame.width, height: 44))
        let label = UILabel(frame: CGRect(x: 16, y: 0, width: self.tableviewConnectView.frame.width, height: 44))
        label.text = "TODAY"
        view.addSubview(label)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 44
    }
    
}
