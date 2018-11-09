//
//  TabbarAndCollectionviewViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 22/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TabbarAndCollectionviewViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionviewConnectView: UICollectionView!
    
    var allData = Data()
    var screen = UIScreen.main.bounds.size
    var cellMarginSize = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBar(title: "Product")

        collectionviewConnectView.register(UINib(nibName: "TabbarAndCollectionCell", bundle: Bundle.main), forCellWithReuseIdentifier: "TabbarAndCollectionCell")
        
        setGridView()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return allData.brandProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionviewConnectView.dequeueReusableCell(withReuseIdentifier: "TabbarAndCollectionCell", for: indexPath) as! TabbarAndCollectionCell
        
        cell.image.image = UIImage(named: allData.brandProduct[indexPath.item]["image"] ?? "ranong")
        
        cell.topLabel.text = allData.brandProduct[indexPath.row]["price"]
        cell.bottomLabel.text = allData.brandProduct[indexPath.row]["name"]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = UIStoryboard.init(name: "TabBar", bundle: Bundle.main).instantiateViewController(withIdentifier: "TabbarCollectionToViewID") as? TabbarCollectionToViewController
        vc?.imageString = allData.brandProduct[indexPath.item]["image"]
        vc?.nameString = allData.brandProduct[indexPath.item]["name"]
        vc?.priceString = allData.brandProduct[indexPath.item]["price"]
        vc?.detailString = allData.brandProduct[indexPath.item]["detail"]
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }

}

extension TabbarAndCollectionviewViewController: UICollectionViewDelegateFlowLayout {
    
    func setGridView() {
        
        let flow = collectionviewConnectView.collectionViewLayout as! UICollectionViewFlowLayout
        let width = CGFloat(screen.width) / 2 - 2
        flow.sectionInset.right = CGFloat(cellMarginSize)
        flow.sectionInset.left = CGFloat(cellMarginSize)
        flow.sectionInset.top = CGFloat(cellMarginSize)
        flow.sectionInset.bottom = CGFloat(cellMarginSize)
        flow.minimumInteritemSpacing = 2
        flow.minimumLineSpacing = 20
        flow.scrollDirection = .vertical
        flow.estimatedItemSize = CGSize(width: width, height: 100)
    }

}
