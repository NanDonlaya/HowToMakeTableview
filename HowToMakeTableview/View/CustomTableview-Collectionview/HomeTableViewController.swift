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
    
    var allData = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBar(title: "Home Breeds")
        
        homeTableview.register(UINib(nibName: "FirstTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "FirstTableViewCell")
        homeTableview.register(UINib(nibName: "SecondTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "SecondTableViewCell")
        homeTableview.register(UINib(nibName: "ThirdTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "ThirdTableViewCell")
        homeTableview.register(UINib(nibName: "ForthTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "ForthTableViewCell")
        homeTableview.register(UINib(nibName: "FifthTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "FifthTableViewCell")
        homeTableview.register(UINib(nibName: "SixthTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "SixthTableViewCell")
        
        homeTableview.rowHeight = UITableView.automaticDimension
        homeTableview.estimatedRowHeight = 100.0
    }
    
    //REMARK: - Datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell01 = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
            cell01.selectionStyle = .none
            cell01.homeImage.image = UIImage(named: allData.homepageImage[0])
            cell01.homeLabel.text = allData.homepageName[0]
            cell01.homeButton.addTarget(self, action: #selector(self.firstButtonClicked), for: .touchUpInside)
            cell01.homeButton.tag = indexPath.row
            return cell01
        }
        if indexPath.row == 1 {
            let cell02 = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            cell02.selectionStyle = .none
            cell02.homeImage.image = UIImage(named: allData.homepageImage[1])
            cell02.homeLabel.text = allData.homepageName[1]
            cell02.homeButton.addTarget(self, action: #selector(self.secondButtonClicked), for: .touchUpInside)
            cell02.homeButton.tag = indexPath.row
            
            
            return cell02
        }
        if indexPath.row == 2 {
            let cell03 = tableView.dequeueReusableCell(withIdentifier: "ThirdTableViewCell", for: indexPath) as! ThirdTableViewCell
            cell03.selectionStyle = .none
            cell03.homeImage.image = UIImage(named: allData.homepageImage[2])
            cell03.homeLabel.text = allData.homepageName[2]
            cell03.homeButton.addTarget(self, action: #selector(self.thirdButtonClicked), for: .touchUpInside)
            cell03.homeButton.tag = indexPath.row
            return cell03
        }
        if indexPath.row == 3 {
            let cell04 = tableView.dequeueReusableCell(withIdentifier: "ForthTableViewCell", for: indexPath) as! ForthTableViewCell
            cell04.selectionStyle = .none
            cell04.homeImage.image = UIImage(named: allData.homepageImage[3])
            cell04.homeLabel.text = allData.homepageName[3]
//            cell04.homeButton.addTarget(self, action: #selector(self.secondButtonClicked), for: .touchUpInside)
//            cell04.homeButton.tag = indexPath.row
            return cell04
        }
        if indexPath.row == 4 {
            let cell05 = tableView.dequeueReusableCell(withIdentifier: "FifthTableViewCell", for: indexPath) as! FifthTableViewCell
            cell05.selectionStyle = .none
            cell05.homeImage.image = UIImage(named: allData.homepageImage[4])
            cell05.homeLabel.text = allData.homepageName[4]
//            cell05.homeButton.addTarget(self, action: #selector(self.secondButtonClicked), for: .touchUpInside)
//            cell05.homeButton.tag = indexPath.row
            return cell05
        }
        else {
            let cell06 = tableView.dequeueReusableCell(withIdentifier: "SixthTableViewCell", for: indexPath) as! SixthTableViewCell
            cell06.selectionStyle = .none
            cell06.homeImage.image = UIImage(named: allData.homepageImage[5])
            cell06.homeLabel.text = allData.homepageName[5]
            //            cell05.homeButton.addTarget(self, action: #selector(self.secondButtonClicked), for: .touchUpInside)
            //            cell05.homeButton.tag = indexPath.row
            return cell06
        }
        
    }
    
    //REMARK: - Add Object
    @objc func firstButtonClicked(_ button: UIButton) {
        
        let vc = UIStoryboard.init(name: "CustomTableview", bundle: Bundle.main).instantiateViewController(withIdentifier: "dogBreedsID") as! CategoryTableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func secondButtonClicked(_ button: UIButton) {
        
        let vc = UIStoryboard.init(name: "CustomTableview", bundle: Bundle.main).instantiateViewController(withIdentifier: "photoID")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func thirdButtonClicked(_ button: UIButton) {
        
        let vc = UIStoryboard.init(name: "ProtocolDelegateHeight", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProtocolDelegateHeightID")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}


