//
//  ExtensionSetNavigationBar.swift
//  Seeker
//
//  Created by Attapong on 2/22/2560 BE.
//  Copyright © 2560 Thanaseth Channonthawat. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{

    func setNavigationBarBack(title:String){
        let titleView = UILabel()
        titleView.text = title
        titleView.textColor = UIColor.white
        titleView.font = UIFont(name: "SukhumvitSet-Text", size: 20)
        let width = titleView.sizeThatFits(CGSize(width:CGFloat.greatestFiniteMagnitude , height: CGFloat.greatestFiniteMagnitude)).width
        titleView.frame = CGRect(origin:CGPoint.zero, size:CGSize(width: width, height: 500))
        titleView.isUserInteractionEnabled = false

        self.navigationItem.titleView = titleView
        
        let buttonBack: UIButton = UIButton(type: UIButton.ButtonType.custom)
        buttonBack.frame = CGRect(x: 0, y: -30, width: 50, height: 50)
        buttonBack.setImage(UIImage(named:"back-arrow"), for: .normal)
        buttonBack.addTarget(self, action:#selector(backToPreviousView(sender:)), for: .touchUpInside)
        buttonBack.imageEdgeInsets = UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0)

        let leftBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonBack)
        self.navigationItem.setLeftBarButton(leftBarButtonItemEdit, animated: false)
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 203/255, green: 107/255, blue: 78/255, alpha: 1)
//        self.navigationController?.navigationBar.setGradientBackground(colors: [colorWithHexString(hex: StyleGuide.sharedInstance.gradientStartColor), colorWithHexString(hex: StyleGuide.sharedInstance.gradientEndColor)])
        UIApplication.shared.statusBarStyle = .lightContent

    }
    

    

    func setNavigationBar(title:String){
        let titleView = UILabel()
        titleView.text = title
        titleView.textColor = UIColor.white
        titleView.font = UIFont(name: "SukhumvitSet-Text", size: 20)
        let width = titleView.sizeThatFits(CGSize(width:CGFloat.greatestFiniteMagnitude , height: CGFloat.greatestFiniteMagnitude)).width
        titleView.frame = CGRect(origin:CGPoint.zero, size:CGSize(width: width, height: 500))
        titleView.isUserInteractionEnabled = false
        self.navigationItem.titleView = titleView
        UIApplication.shared.statusBarStyle = .lightContent
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 203/255, green: 107/255, blue: 78/255, alpha: 1)

//        self.navigationController?.navigationBar.setGradientBackground(colors: [colorWithHexString(hex: StyleGuide.sharedInstance.gradientStartColor), colorWithHexString(hex: StyleGuide.sharedInstance.gradientEndColor)])
    }

    @objc func backToPreviousView(sender:UIButton!){
        _ = navigationController?.popViewController(animated: true)
    }
    @objc func historyClick(sender:UIButton!){
    }

    @objc func moreClick(sender:UIButton!){
    }

    @objc func dismissBlur(sender:UIButton!){

    }
}

