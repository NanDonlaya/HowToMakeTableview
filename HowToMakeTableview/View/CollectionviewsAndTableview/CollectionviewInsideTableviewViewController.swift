//
//  CollectionviewInsideTableviewViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 17/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class CollectionviewInsideTableviewViewController: UIViewController {

    var imageAr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageAr = ["onePiece1", "onePiece2", "onePiece3", "onePiece4", "onePiece5", "onePiece6", "onePiece7", "onePiece8", "onePiece9"]
        
    }
    

}

extension CollectionviewInsideTableviewViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        
        
        
        cell.collectionviewConnectTableview.reloadData()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
    }
    
}

extension CollectionviewInsideTableviewViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageAr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.collectionImage.image = UIImage(named: imageAr[indexPath.row])
        
        return cell
    }
    
}
