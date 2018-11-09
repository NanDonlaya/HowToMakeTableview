//
//  SectionInTableViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 22/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class SectionInTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionviewConnectTableview: UICollectionView!
    
    let screen = UIScreen.main.bounds.size
    var connectImage = String()
    var allData = Data()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionviewConnectTableview.dataSource = self
        collectionviewConnectTableview.delegate = self
        
        collectionviewConnectTableview.register(UINib(nibName: "SectionCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "SectionCollectionViewCell")
        
        setupLayout()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("\(connectImage)")
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionviewConnectTableview.dequeueReusableCell(withReuseIdentifier: "SectionCollectionViewCell", for: indexPath) as! SectionCollectionViewCell
        cell.myImage.image = UIImage(named: allData.frenchAllPicture[indexPath.row])
        
        return cell
    }
    
}

extension SectionInTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let weight = screen.width - 16.0
        
        return CGSize(width: weight, height: screen.height)
    }
    
    func setupLayout() {
        
        let flow = collectionviewConnectTableview.collectionViewLayout as! UICollectionViewFlowLayout
        flow.scrollDirection = .vertical
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 32
    }
    
}
