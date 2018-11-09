//
//  ProtocolDelegateHeightViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 10/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class ProtocolDelegateHeightViewController: UIViewController, DelegateHeight {
    
    func updateHeight() {
        
        tableviewConectView.beginUpdates() //จะไปทำ Method tableview height for row เพื่อเปลี่ยนแปลงความสูงของแต่ละ cell
        tableviewConectView.endUpdates()
    }
    
    @IBOutlet weak var tableviewConectView: UITableView!
    
    var allData = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableviewConectView.rowHeight = UITableView.automaticDimension
        tableviewConectView.estimatedRowHeight = 100

        tableviewConectView.register(UINib(nibName: "ProtocolDelegateHeightCell", bundle: Bundle.main), forCellReuseIdentifier: "ProtocolDelegateHeightCell")
    }
    

}

extension ProtocolDelegateHeightViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allData.foodName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProtocolDelegateHeightCell", for: indexPath) as! ProtocolDelegateHeightCell
        
        cell.selectionStyle = .none
        
        cell.showImage.image = UIImage(named: allData.foodImage[indexPath.row])
        
        cell.showLabel.text = allData.foodName[indexPath.row]
        cell.showLabel.numberOfLines = 0
        cell.showLabel.lineBreakMode = .byWordWrapping
        cell.showLabel.sizeToFit()
        cell.constrainHeightLabel.constant = cell.showLabel.frame.height
        
        cell.showButton.setTitle("Show Description", for: .normal)
        
        cell.showDescription.text = allData.foodDescription[indexPath.row]
        
        cell.delegateSetupHeight = self  //อย่าลืมเซ็ท Delegate Protocol ด้วย
        
        return cell
    }
    
   
}
