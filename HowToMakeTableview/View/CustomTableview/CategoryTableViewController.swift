//
//  CategoryTableViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 27/9/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class CategoryTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dogBreeds = Data()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Tableview Datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dogBreeds.nameOfdog.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! CustomTableviewCell
        
        cell.selectionStyle = .none
        
        cell.firstImage.image = UIImage(named: dogBreeds.imageOfdog[indexPath.row])
        
        cell.firstLabel.text = dogBreeds.nameOfdog[indexPath.row]
        cell.firstLabel.numberOfLines = 0
        cell.firstLabel.lineBreakMode = .byWordWrapping
        cell.firstLabel.sizeToFit()
        cell.firstLabelHeight.constant = cell.firstLabel.frame.height

        cell.firstbutton.addTarget(self, action: #selector(self.firstClick), for: .touchUpInside)
        cell.firstbutton.tag = indexPath.row
        
        return cell
    }
    
    //MARK: - Add Oject TableviewCell
    @objc func firstClick(_ button: UIButton) {
        
        let vc = UIStoryboard.init(name: "CustomTableview", bundle: Bundle.main).instantiateViewController(withIdentifier: "detailID") as? CategoryDetailViewController
        vc?.imageString = dogBreeds.imageOfdog[button.tag]
        vc?.nameString = dogBreeds.nameOfdog[button.tag]
        vc?.dataString = dogBreeds.dataOfdog[button.tag]
        vc?.typeString = dogBreeds.breedsType[button.tag]
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    //MARK: -
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
