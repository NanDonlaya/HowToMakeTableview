//
//  HomeTableViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 3/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class HomeTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var homeTableview: UITableView!
    
    var image = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBar(title: "Home Breeds")

        homeTableview.delegate = self
        homeTableview.dataSource = self
        
        homeTableview.register(UINib(nibName: "FirstTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "FirstTableViewCell")
        homeTableview.register(UINib(nibName: "SecondTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "SecondTableViewCell")
        
        homeTableview.rowHeight = UITableView.automaticDimension
        homeTableview.estimatedRowHeight = 100.0
    }
    
    //REMARK: - Datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell01 = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
            cell01.selectionStyle = .none
            cell01.homeImage.image = UIImage(named: image.homeAllImage[0])
            cell01.homeButton.addTarget(self, action: #selector(self.firstButtonClicked), for: .touchUpInside)
            cell01.homeButton.tag = indexPath.row
            
            return cell01
        } else {
            let cell02 = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            cell02.selectionStyle = .none
            cell02.homeImage.image = UIImage(named: image.homeAllImage[1])
            cell02.homeButton.addTarget(self, action: #selector(self.secondButtonClicked), for: .touchUpInside)
            cell02.homeButton.tag = indexPath.row
            
            
            return cell02
        }
    }
    
    //REMARK: -
    @objc func firstButtonClicked(_ button: UIButton) {
        
        let vc = UIStoryboard.init(name: "CustomTableview", bundle: Bundle.main).instantiateViewController(withIdentifier: "dogBreedsID") as! CategoryTableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @objc func secondButtonClicked(_ button: UIButton) {
        
        let vc = UIStoryboard.init(name: "CustomTableview", bundle: Bundle.main).instantiateViewController(withIdentifier: "photoID")
        self.navigationController?.pushViewController(vc, animated: true)
    }

}


