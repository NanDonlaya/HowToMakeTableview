//
//  CutomTableview.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 26/9/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class CustomTableviewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var data: [String : [String]] = ["myimage" : ["lopburi", "ranong"],
                "province": ["ลพบุรี", "ระนอง"],
                "distance": ["200 km", "600 km"]]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Tableview Datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return data["province"]?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTravelItems", for: indexPath) as! CustomTableviewCell

        cell.placeImageView.image = UIImage(named: data["myimage"]![indexPath.row])

        cell.province.text = data["province"]![indexPath.row]

        cell.distance.text = data["distance"]![indexPath.row]

        return cell
    }
    
    // MARK: - Tableview Delegate
    

    //MARK: -
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {

        return 100
    }
    
    
    
    
}
