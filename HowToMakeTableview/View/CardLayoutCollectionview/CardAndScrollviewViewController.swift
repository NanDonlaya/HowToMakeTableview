//
//  CardAndScrollviewViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 18/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

var data = "Companion with the balanced diet nature intended with Taste of the Wild High Prairie Grain-Free Dry Dog Food! Formulated with novel proteins including buffalo and bison, this grain-free recipe includes peas and sweet potatoes that deliver the highly-digestible energy your active pup needs, along with natural antioxidant support from real fruits and vegetables and dried chicory root for prebiotic support and healthy digestion. Essential minerals are chelated with amino acids to optimize their absorption and ensure maximum benefit, for complete and balanced nutrition with a taste of the wild your furry friend constantly craves! Companion with the balanced diet nature intended with Taste of the Wild High Prairie Grain-Free Dry Dog Food! Formulated with novel proteins including buffalo and bison, this grain-free recipe includes peas and sweet potatoes that deliver the highly-digestible energy your active pup needs, along with natural antioxidant support from real fruits and vegetables and dried chicory root for prebiotic support and healthy digestion. Essential minerals are chelated with amino acids to optimize their absorption and ensure maximum benefit, for complete and balanced nutrition with a taste of the wild your furry friend constantly craves! Companion with the balanced diet nature intended with Taste of the Wild High Prairie Grain-Free Dry Dog Food! Formulated with novel proteins including buffalo and bison, this grain-free recipe includes peas and sweet potatoes that deliver the highly-digestible energy your active pup needs, along with natural antioxidant support from real fruits and vegetables and dried chicory root for prebiotic support and healthy digestion. Essential minerals are chelated with amino acids to optimize their absorption and ensure maximum benefit, for complete and balanced nutrition with a taste of the wild your furry friend constantly craves! END"


import UIKit

class CardAndScrollviewViewController: UIViewController {
    
    @IBOutlet weak var tableviewConnectView: UITableView!
    @IBOutlet weak var tableviewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableviewConnectView.isScrollEnabled = false
        tableviewConnectView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableviewConnectView.frame.size.width, height: 1))

    }
    
    
}

extension CardAndScrollviewViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "CardAndScrollCell", for: indexPath) as! CardAndScrollviewInTableViewCell
        
        cell.label.text = data
        cell.label.numberOfLines = 0
        cell.label.lineBreakMode = .byWordWrapping
        cell.label.sizeToFit()
        
        self.tableviewHeight.constant = tableviewConnectView.contentSize.height
        
        return cell
    }
    
    
}
