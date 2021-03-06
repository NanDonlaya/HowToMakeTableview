//
//  TabBarTableViewCell.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 29/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TabBarTableViewCells: UITableViewCell {

    @IBOutlet weak var collectionConnectTableviewCell: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var heightCollection: NSLayoutConstraint!
    
    var screen = UIScreen.main.bounds.size
    var cellMarginSize = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionConnectTableviewCell.register(UINib(nibName: "TabBarCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "TabBarCollectionViewCell")
        
        collectionConnectTableviewCell.dataSource = self
        collectionConnectTableviewCell.delegate = self
        
        collectionConnectTableviewCell.isScrollEnabled = false
        
        setGridView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension TabBarTableViewCells: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionConnectTableviewCell.dequeueReusableCell(withReuseIdentifier: "TabBarCollectionViewCell", for: indexPath) as! TabBarCollectionViewCell
        
        cell.image.image = UIImage(named: "ranong")
        cell.price.text = "$ 500"
        self.heightCollection.constant = self.collectionConnectTableviewCell.contentSize.height
        print("collectionview height: \(self.collectionConnectTableviewCell.contentSize.height)")
        return cell
    }
    
}
extension TabBarTableViewCells: UICollectionViewDelegateFlowLayout {
    
    func setGridView() {
        
        let flow = collectionConnectTableviewCell.collectionViewLayout as! UICollectionViewFlowLayout
        let width = CGFloat(screen.width / 2)
        flow.sectionInset.right = CGFloat(cellMarginSize)
        flow.sectionInset.left = CGFloat(cellMarginSize)
        flow.sectionInset.top = CGFloat(cellMarginSize)
        flow.sectionInset.bottom = CGFloat(cellMarginSize)
        flow.minimumInteritemSpacing = 0
        flow.minimumLineSpacing = 0
        flow.scrollDirection = .vertical
        flow.estimatedItemSize = CGSize(width: width, height: 300)
//        flow.itemSize = CGSize(width: width, height: 300)
    }
    
}
