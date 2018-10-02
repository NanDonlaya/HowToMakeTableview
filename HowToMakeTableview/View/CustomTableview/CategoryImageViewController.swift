//
//  CategoryImageViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 28/9/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit
import Spring

class CategoryImageViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageItem = Data()
    var typeOfString: String?
    var estimatewidth = 160.0
    var cellMarginSize = 16.0
    var array: [String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delegate
//        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        //Register Cell
        self.collectionView.register(UINib(nibName: "CollectionImageCell", bundle: nil), forCellWithReuseIdentifier: "CollectionImageCell")
        
        //Set Grid View
        self.SetupGridView()
        
        checkBreedType()
    }
    
    func SetupGridView() {
        
        let flow = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flow.minimumInteritemSpacing = CGFloat(self.cellMarginSize)
        flow.minimumLineSpacing = CGFloat(self.cellMarginSize)
    }
    
    @IBAction func homeButtonClicked(_ sender: UIButton) {
        
        let homePage = UIStoryboard.init(name: "CustomTableview", bundle: Bundle.main).instantiateViewController(withIdentifier: "homeID") as! CategoryTableViewController
        
        self.navigationController?.pushViewController(homePage, animated: true)
    }
    

}

extension CategoryImageViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return array?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionImageCell", for: indexPath) as! CollectionImageCell
        cell.setImage(image: array?[indexPath.row] ?? "ranong")
    
        return cell
    }
    
    func checkBreedType() {
        
        if typeOfString == imageItem.breedsType[0] {
            array = imageItem.frenchAllPicture
        } else if typeOfString == imageItem.breedsType[1] {
            array = imageItem.pugAllPicture
        }
    }

    
}

//extension CategoryImageViewController: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        let width = self.caculateWidth()
//
//        return CGSize(width: width, height: width)
//    }
//
//    func caculateWidth() -> CGFloat {
//
//        let estimatedWidth = CGFloat(estimatewidth)
//        let cellCount = floor(CGFloat(self.view.frame.width / estimatedWidth))
//        let margin =  CGFloat(cellMarginSize * 2)
//        let width = (self.view.frame.size.width - CGFloat(cellMarginSize) * (cellCount - 1) - margin) / cellCount
//
//        return width
//    }


//}

    
    
    

