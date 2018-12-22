//
//  PhotoiCarouselViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 10/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit
import iCarousel

class PhotoiCarouselViewController: UIViewController {

    @IBOutlet weak var collectionviewConnectView: UICollectionView!
    
    var allData = Data()
    var cellMarginSize = 5.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionviewConnectView.register(UINib(nibName: "PhotoiCarouselCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "PhotoiCarouselCollectionViewCell")
        
        setLayout()
        
        collectionviewConnectView.isPagingEnabled = true //ทำให้หยุดทีละรูป

    }
    

}

extension PhotoiCarouselViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return allData.pugAllPicture.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoiCarouselCollectionViewCell", for: indexPath) as! PhotoiCarouselCollectionViewCell
        cell.showImage.image = UIImage(named: allData.pugAllPicture[indexPath.row])
        cell.showImage.contentMode = .scaleAspectFit
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let height = UIScreen.main.bounds.size.width * 0.8
        
        return CGSize(width: height, height: height + 60)
    }
    
    func setLayout() {
        
        let flow = collectionviewConnectView.collectionViewLayout as! UICollectionViewFlowLayout
        flow.sectionInset.right = CGFloat(cellMarginSize)
        flow.sectionInset.left = CGFloat(cellMarginSize)
        flow.sectionInset.top = CGFloat(cellMarginSize)
        flow.sectionInset.bottom = CGFloat(cellMarginSize)
        flow.scrollDirection = .horizontal
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 10
    }

}
