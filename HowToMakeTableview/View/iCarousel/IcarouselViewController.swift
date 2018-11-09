//
//  IcarouselViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 10/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit
import iCarousel

class IcarouselViewController: UIViewController {

    @IBOutlet weak var icarouselConnectView: iCarousel!
    
    var allData = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        icarouselConnectView.type = .linear
        icarouselConnectView.contentMode = .scaleAspectFill
        icarouselConnectView.isPagingEnabled = true
        
    }
    

}

extension IcarouselViewController: iCarouselDataSource, iCarouselDelegate {
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        
        return allData.pugAllPicture.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        
        var showImage: UIImageView!
        if view == nil {
            showImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
            showImage.contentMode = .scaleAspectFit
        } else {
            showImage = view as? UIImageView
        }
        
        showImage.image = UIImage(named: allData.pugAllPicture[index])

        return showImage
    }
    
    

    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        switch (option) {
        case .spacing: return 1.1 // 8 points spacing
        default: return value
        }

    }

    
}
