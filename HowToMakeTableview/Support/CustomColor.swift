//
//  CustomColor.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 25/11/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    func convertHexCodeToUIColor(hex: String) -> UIColor {
        
        var cleanString: String = hex.trimmingCharacters(in: .whitespaces).uppercased()
        if cleanString.hasPrefix("#") {
            cleanString.remove(at: cleanString.startIndex)
        }
        if cleanString.count != 6 {
            UIColor.gray
        }
        
        var rgbColor: UInt32 = 0
        Scanner(string: cleanString).scanHexInt32(&rgbColor)
        // 0xRRGGBB
        return UIColor (
            red: CGFloat((rgbColor & 0xFF0000 >> 16)) / 255.0,
            green: CGFloat((rgbColor & 0x00FF00 >> 8)) / 255.0,
            blue: CGFloat((rgbColor & 0x0000FF)) / 255.0,
            alpha: 1.0 )
    }
    
}

