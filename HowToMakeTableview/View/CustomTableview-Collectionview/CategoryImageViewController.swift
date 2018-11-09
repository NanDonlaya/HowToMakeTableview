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
    var cellMarginSize = 8
    var array: [String]?
    let screen = UIScreen.main.bounds.size //ขนาดของหน้าจอตามไซส์แต่ละหน้าจอ
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBarBack(title: "Dog Image")
        
        //Delegate
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        //Register Cell
        self.collectionView.register(UINib(nibName: "CollectionImageCell", bundle: nil), forCellWithReuseIdentifier: "CollectionImageCell")
        
        //Set Grid View
        self.SetupGridView()
        
        checkBreedType()
    }
    
    func SetupGridView() {
        
        let flow = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flow.minimumInteritemSpacing = CGFloat(cellMarginSize)
        flow.minimumLineSpacing = CGFloat(cellMarginSize)
        flow.sectionInset.left = CGFloat(cellMarginSize)
        flow.sectionInset.right = CGFloat(cellMarginSize)
    }
    
    @IBAction func homeButtonClicked(_ sender: UIButton) {

        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
}
//REMARK: Collection Datasource
extension CategoryImageViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return array?.count ?? 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionImageCell", for: indexPath) as! CollectionImageCell
        cell.setImage(image: array?[indexPath.row] ?? "ranong")
        
        return cell
    }
    
    func checkBreedType() {
    
        if typeOfString == BreedTypeEnum.french.rawValue {
            array = imageItem.frenchAllPicture
        } else if typeOfString == BreedTypeEnum.pug.rawValue {
            array = imageItem.pugAllPicture
        }
    }
    
    
}
//REMARK CollectionView Delegate
extension CategoryImageViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = self.caculateWidth()
        
        return CGSize(width: width, height: width)
    }
    
    func caculateWidth() -> CGFloat {
        
        let estimatedWidth: CGFloat = screen.width / 2
        let margin = CGFloat(cellMarginSize * 2)
        let width: CGFloat = estimatedWidth - margin
        
        print("\(estimatedWidth) \(width) \(screen.width)\(margin)")
        return width
    }
    
    
}





