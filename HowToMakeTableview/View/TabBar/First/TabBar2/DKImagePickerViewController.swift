//
//  DKImagePickerViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 31/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit
import DKImagePickerController
import Agrume

class DKImagePickerViewController: UIViewController {
    
    @IBOutlet weak var collectionConnectView: UICollectionView!
    @IBOutlet weak var buttonAddImage: UIButton!
    
    var imageArray = [UIImage]()
    var screen = UIScreen.main.bounds.size
    var cellMarginSize = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionConnectView.register(UINib(nibName: "DKImagePickerCell", bundle: Bundle.main), forCellWithReuseIdentifier: "DKImagePickerCell")
        
        setGridView()
        
        buttonAddImage.setTitle("Add Image", for: .normal)
    }
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        let pickerController = DKImagePickerController()
        
        pickerController.didSelectAssets = { (assets: [DKAsset]) in
            print("didSelectAssets")
            print(assets)
            for item in assets {
                item.fetchOriginalImage(completeBlock: { image, info in
                    self.imageArray.append(image!)
                    self.collectionConnectView.reloadData()
                })
            }
        }
        
        self.present(pickerController, animated: true)
    }
    
}
extension DKImagePickerViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("*** \(imageArray.count)")
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionConnectView.dequeueReusableCell(withReuseIdentifier: "DKImagePickerCell", for: indexPath) as! DKImagePickerCell
        
        print("IMAGEARRAY IS \(imageArray[indexPath.row])")
        cell.myImage.image = imageArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let agrume = Agrume(images: imageArray, startIndex: indexPath.item, background: .blurred(.light))
        
        agrume.didScroll = { [unowned self] index in
            self.collectionConnectView.scrollToItem(at: IndexPath(item: index, section: 0), at: [], animated: false)
        }
        agrume.show(from: self)
    }
    
    func setGridView() {
        
        let flow = collectionConnectView.collectionViewLayout as! UICollectionViewFlowLayout
        let width = CGFloat(screen.width) / 2 - 50
        flow.sectionInset.right = CGFloat(cellMarginSize)
        flow.sectionInset.left = CGFloat(cellMarginSize)
        flow.sectionInset.top = CGFloat(cellMarginSize)
        flow.sectionInset.bottom = CGFloat(cellMarginSize)
        flow.minimumInteritemSpacing = 10
        flow.scrollDirection = .horizontal
        flow.itemSize = CGSize(width: width, height: 200)
//        flow.estimatedItemSize = CGSize(width: width, height: 100)
        collectionConnectView.collectionViewLayout = flow
    }
    
}
