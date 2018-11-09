//
//  PhotoCollectionViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 4/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class PhotoCollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var showPageControl: UIPageControl!
    @IBOutlet weak var button: UIButton!
    
    let screen = UIScreen.main.bounds.size
    let cellMarginSize = 0.0
    let image = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBarBack(title: "Home Of Dog")

        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "PhotoCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "PhotoCollectionViewCell")
        
        setGridView()
    }
    
    
}

//REMARK: - Datasource
extension PhotoCollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let count = image.dogHouse.count
        showPageControl.numberOfPages = count
        showPageControl.isHidden = !(count > 1) //OR count < 1
        
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCollectionViewCell", for: indexPath) as! PhotoCollectionViewCell
        cell.setImage(image: image.dogHouse[indexPath.row])
        button.addTarget(self, action: #selector(self.buttonClicked), for: .touchUpInside)
        button.tag = indexPath.row
        
        return cell
    }
    
    @objc func buttonClicked(_ button: UIButton) {
        
        self.showPageControl.currentPage = Int(showPageControl.currentPage + 1)

        nextIndex()
    }
    
  
}

//REMARK: - Delegate
extension PhotoCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = CGFloat(screen.width)
        let height = CGFloat(screen.height)
        
        return CGSize(width: width, height: height)
    }
    
    func setGridView() {
        
        let flow = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flow.sectionInset.right = CGFloat(cellMarginSize)
        flow.sectionInset.left = CGFloat(cellMarginSize)
        flow.sectionInset.top = CGFloat(cellMarginSize)
        flow.sectionInset.bottom = CGFloat(cellMarginSize)
        flow.scrollDirection = .horizontal
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {

        showPageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
        
        nextIndex()
    }
    
    func nextIndex() {
        
        self.collectionView.scrollToItem(at: IndexPath(item: showPageControl.currentPage, section: 0), at: .right, animated: true)
    }

    

}

    

