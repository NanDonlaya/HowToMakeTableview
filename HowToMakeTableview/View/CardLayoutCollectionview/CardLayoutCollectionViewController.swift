//
//  CardLayoutCollectionViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 11/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class CardLayoutCollectionViewController: UIViewController, DelegateCardLayout {
    
    func updateHeight() {
        
//        collectionviewConnectView.performBatchUpdates(_, completion: nil)
//        collectionviewConnectView.reloadItems(at: <#T##[IndexPath]#>)
    }
    
    @IBOutlet weak var collectionviewConnectView: UICollectionView!
    
    var allData = Data()
    var screen = UIScreen.main.bounds.size
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionviewConnectView.register(UINib(nibName: "CardLayoutCollectionCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "CardLayoutCollectionCollectionViewCell")
    }
    
    
}

extension CardLayoutCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return allData.imageOfSeven.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardLayoutCollectionCollectionViewCell", for: indexPath) as! CardLayoutCollectionCollectionViewCell
        
        cell.showImage.image = UIImage(named: allData.imageOfSeven[indexPath.row])
        
        cell.showDescription.text = allData.answerOfSeven[indexPath.row]
        
        cell.showButton.setTitle("The answer is .....", for: .normal)
        
        //Custom View or you can use Spring What ever
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 4
        cell.layer.shadowOpacity = 1
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        return cell
    }
    
    
}

extension CardLayoutCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = screen.width * 0.93
        let height = screen.height * 0.35
        
        return CGSize(width: width, height: height)
        
    }
  
    
}


