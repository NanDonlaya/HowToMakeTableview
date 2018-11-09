//
//  FlowLayoutCarouselViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 10/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class FlowLayoutCarouselViewController: UIViewController {
    
    @IBOutlet weak var collectionviewConnectView: UICollectionView!
    
    var allData = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionviewConnectView.register(UINib(nibName: "FlowLayoutCarouselCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "FlowLayoutCarouselCollectionViewCell")
        
        let flowLayout = UPCarouselFlowLayout()
        flowLayout.itemSize = CGSize(width: UIScreen.main.bounds.size.width - 90.0, height: collectionviewConnectView.frame.size.height)
        flowLayout.scrollDirection = .horizontal
        flowLayout.sideItemScale = 0.8
        flowLayout.sideItemAlpha = 1.0
        flowLayout.spacingMode = .fixed(spacing: 5.0)
        collectionviewConnectView.collectionViewLayout = flowLayout
    }
    
    
}

extension FlowLayoutCarouselViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return allData.frenchAllPicture.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FlowLayoutCarouselCollectionViewCell", for: indexPath) as! FlowLayoutCarouselCollectionViewCell
        cell.showImage.image = UIImage(named: allData.frenchAllPicture[indexPath.row])
        
        return cell
    }
    
    
}
