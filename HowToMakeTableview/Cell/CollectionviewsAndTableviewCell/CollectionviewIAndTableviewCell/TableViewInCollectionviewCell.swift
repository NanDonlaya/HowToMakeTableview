//
//  TableViewInCollectionviewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 19/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TableViewInCollectionviewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionviewConnectTableview: UICollectionView!
    
    let screen = UIScreen.main.bounds.size
    var movieData = [[String : String]]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionviewConnectTableview.delegate = self
        collectionviewConnectTableview.dataSource = self
        
        collectionviewConnectTableview.register(UINib(nibName: "CollectionviewInTableviewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "CollectionviewInTableviewCell")
        
        setupLayout()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if movieData.count != 0 {
            print("NAN \(movieData.count)")
            return movieData.count
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionviewConnectTableview.dequeueReusableCell(withReuseIdentifier: "CollectionviewInTableviewCell", for: indexPath) as! CollectionviewInTableviewCell
        cell.image.image = UIImage(named: movieData[indexPath.row]["image"]!)
        cell.label.text = movieData[indexPath.row]["title"]
        cell.label.textColor = UIColor.white
        cell.label.font = UIFont(name: "Georgia", size: 16)
        cell.label.numberOfLines = 0
        cell.label.lineBreakMode = .byWordWrapping
        cell.label.sizeToFit()
        cell.heightLabel.constant = cell.label.bounds.height
        
        return cell
    }
    
}

extension TableViewInCollectionviewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let weight = (screen.width / 3) - 5
        
        return CGSize(width: weight, height: weight)
    }
    
    func setupLayout() {
        
        let flow = collectionviewConnectTableview.collectionViewLayout as! UICollectionViewFlowLayout
        flow.scrollDirection = .horizontal
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
    
}
