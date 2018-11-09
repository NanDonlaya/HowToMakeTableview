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
    
    func setNavigationBarBackWithSearch(title:String){
        let titleView = UILabel()
        titleView.text = title
        titleView.textColor = UIColor.white
        titleView.font = UIFont(name: "RSU-Bold", size: 22)
        let width = titleView.sizeThatFits(CGSize(width:CGFloat.greatestFiniteMagnitude , height: CGFloat.greatestFiniteMagnitude)).width
        titleView.frame = CGRect(origin:CGPoint.zero, size:CGSize(width: width, height: 500))
        titleView.isUserInteractionEnabled = false
        self.navigationItem.titleView = titleView
        
        let buttonBack: UIButton = UIButton(type: UIButtonType.custom)
        buttonBack.frame = CGRect(x: 0, y: -30, width: 50, height: 50)
        buttonBack.setImage(UIImage(named:"ic_back_white"), for: .normal)
        buttonBack.imageEdgeInsets = UIEdgeInsetsMake(0, -30, 0, 0)
        buttonBack.addTarget(self, action:#selector(backToPreviousView(sender:)), for: .touchUpInside)
        let leftBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonBack)
        self.navigationItem.setLeftBarButton(leftBarButtonItemEdit, animated: false)
        
        let buttonMore: UIButton = UIButton(type: UIButtonType.custom)
        buttonMore.frame = CGRect(x: 0, y: -30, width: 25, height: 25)
        buttonMore.setImage(UIImage(named:"ic_more"), for: UIControlState.normal)
        buttonMore.addTarget(self, action:#selector(moreClick(sender:)), for: .touchUpInside)
        let rightBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonMore)
        self.navigationItem.setRightBarButton(rightBarButtonItemEdit, animated: false)
        self.navigationController?.navigationBar.alpha = 1

    }

    
    func setNavigationBarBack(title:String){
        let titleView = UILabel()
        titleView.text = title
        titleView.textColor = UIColor.white
        titleView.font = UIFont(name: "SukhumvitSet-Text", size: 20)
        let width = titleView.sizeThatFits(CGSize(width:CGFloat.greatestFiniteMagnitude , height: CGFloat.greatestFiniteMagnitude)).width
        titleView.frame = CGRect(origin:CGPoint.zero, size:CGSize(width: width, height: 500))
        titleView.isUserInteractionEnabled = false

        self.navigationItem.titleView = titleView
        
        let buttonBack: UIButton = UIButton(type: UIButtonType.custom)
        buttonBack.frame = CGRect(x: 0, y: -30, width: 50, height: 50)
        buttonBack.setImage(UIImage(named:"ic_back_white"), for: .normal)
        buttonBack.addTarget(self, action:#selector(backToPreviousView(sender:)), for: .touchUpInside)
        buttonBack.imageEdgeInsets = UIEdgeInsetsMake(0, -30, 0, 0)

        let leftBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonBack)
        self.navigationItem.setLeftBarButton(leftBarButtonItemEdit, animated: false)
        self.navigationController?.navigationBar.setGradientBackground(colors: [colorWithHexString(hex: StyleGuide.sharedInstance.gradientStartColor), colorWithHexString(hex: StyleGuide.sharedInstance.gradientEndColor)])
        UIApplication.shared.statusBarStyle = .lightContent

    }
    
    func setNavigationBarBackWithMore(title:String){
        let titleView = UILabel()
        titleView.text = title
        titleView.textColor = UIColor.white
        titleView.font = UIFont(name: "RSU-Bold", size: 22)
        let width = titleView.sizeThatFits(CGSize(width:CGFloat.greatestFiniteMagnitude , height: CGFloat.greatestFiniteMagnitude)).width
        titleView.frame = CGRect(origin:CGPoint.zero, size:CGSize(width: width, height: 500))
        self.navigationItem.titleView = titleView
        
        let buttonBack: UIButton = UIButton(type: UIButtonType.custom)
        buttonBack.frame = CGRect(x: 0, y: -30, width: 50, height: 50)
        buttonBack.setImage(UIImage(named:"ic_back_white"), for: .normal)
        buttonBack.addTarget(self, action:#selector(backToPreviousView(sender:)), for: .touchUpInside)
        buttonBack.imageEdgeInsets = UIEdgeInsetsMake(0, -30, 0, 0)
        let leftBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonBack)
        self.navigationItem.setLeftBarButton(leftBarButtonItemEdit, animated: false)
        
        
        let buttonMore: UIButton = UIButton(type: UIButtonType.custom)
        buttonMore.frame = CGRect(x: 0, y: -30, width: 25, height: 25)
        buttonMore.setImage(UIImage(named:"ic_more"), for: UIControlState.normal)
        buttonMore.addTarget(self, action:#selector(moreClick(sender:)), for: .touchUpInside)
        let rightBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonMore)
        self.navigationItem.setRightBarButton(rightBarButtonItemEdit, animated: false)

        self.navigationController?.navigationBar.setGradientBackground(colors: [colorWithHexString(hex: StyleGuide.sharedInstance.gradientStartColor), colorWithHexString(hex: StyleGuide.sharedInstance.gradientEndColor)])

        self.navigationController?.navigationBar.alpha = 1
        UIApplication.shared.statusBarStyle = .lightContent
        
    }

    
    func setNavigationBarBackWithWhiteColor(title:String){
        let titleView = UILabel()
        titleView.text = title
        titleView.textColor = UIColor.white
        titleView.font = UIFont(name: "RSU-Bold", size: 22)
        let width = titleView.sizeThatFits(CGSize(width:CGFloat.greatestFiniteMagnitude , height: CGFloat.greatestFiniteMagnitude)).width
        titleView.frame = CGRect(origin:CGPoint.zero, size:CGSize(width: width, height: 500))
        self.navigationItem.titleView = titleView
        
        let buttonBack: UIButton = UIButton(type: UIButtonType.custom)
        buttonBack.frame = CGRect(x: 0, y: -30, width: 50, height: 50)
        buttonBack.setImage(UIImage(named:"ic_back_black"), for: .normal)
        buttonBack.addTarget(self, action:#selector(backToPreviousView(sender:)), for: .touchUpInside)
        buttonBack.imageEdgeInsets = UIEdgeInsetsMake(0, -30, 0, 0)
        let leftBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonBack)
        self.navigationItem.setLeftBarButton(leftBarButtonItemEdit, animated: false)
        
        
        let buttonMore: UIButton = UIButton(type: UIButtonType.custom)
        buttonMore.frame = CGRect(x: 0, y: -30, width: 25, height: 25)
        buttonMore.setImage(UIImage(named:"ic_more"), for: UIControlState.normal)
        buttonMore.addTarget(self, action:#selector(moreClick(sender:)), for: .touchUpInside)
        let rightBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonMore)
        self.navigationItem.setRightBarButton(rightBarButtonItemEdit, animated: false)

        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.alpha = 1
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        UIApplication.shared.statusBarStyle = .default
        
    }

    func setNavigationBarWithBlur(title:String){
        let titleView = UILabel()
        titleView.text = title
        titleView.textColor = UIColor.white
        titleView.font = UIFont(name: "SukhumvitSet-Text", size: 20)
        let width = titleView.sizeThatFits(CGSize(width:CGFloat.greatestFiniteMagnitude , height: CGFloat.greatestFiniteMagnitude)).width
        titleView.frame = CGRect(origin:CGPoint.zero, size:CGSize(width: width, height: 500))
        titleView.isUserInteractionEnabled = false
        
        let buttonBack: UIButton = UIButton(type: UIButtonType.custom)
        buttonBack.frame = CGRect(x: 0, y: -30, width: 50, height: 50)
        buttonBack.setImage(UIImage(named:"ic_back_white"), for: .normal)
        buttonBack.addTarget(self, action:#selector(dismissBlur(sender:)), for: .touchUpInside)
        buttonBack.imageEdgeInsets = UIEdgeInsetsMake(0, -30, 0, 0)
        
        let leftBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonBack)
        self.navigationItem.setLeftBarButton(leftBarButtonItemEdit, animated: false)

        self.navigationItem.titleView = titleView
        self.navigationController?.navigationBar.alpha = 1
        self.navigationController?.navigationBar.setGradientBackground(colors: [colorWithHexString(hex: StyleGuide.sharedInstance.gradientStartColor), colorWithHexString(hex: StyleGuide.sharedInstance.gradientEndColor)])
    }

    func setNavigationBarMore(title:String){
        let titleView = UILabel()
        titleView.text = title
        titleView.textColor = UIColor.white
        titleView.font = UIFont(name: "RSU-Bold", size: 22)
        let width = titleView.sizeThatFits(CGSize(width:CGFloat.greatestFiniteMagnitude , height: CGFloat.greatestFiniteMagnitude)).width
        titleView.frame = CGRect(origin:CGPoint.zero, size:CGSize(width: width, height: 500))
        self.navigationItem.titleView = titleView
        
        let buttonMore: UIButton = UIButton(type: UIButtonType.custom)
        buttonMore.frame = CGRect(x: 0, y: -30, width: 25, height: 25)
        buttonMore.setImage(UIImage(named:"ic_more"), for: UIControlState.normal)
        buttonMore.addTarget(self, action:#selector(moreClick(sender:)), for: .touchUpInside)
        let rightBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonMore)
        self.navigationItem.setRightBarButton(rightBarButtonItemEdit, animated: false)
        
        self.navigationController?.navigationBar.alpha = 1
        self.navigationController?.navigationBar.setGradientBackground(colors: [colorWithHexString(hex: StyleGuide.sharedInstance.gradientStartColor), colorWithHexString(hex: StyleGuide.sharedInstance.gradientEndColor)])

        UIApplication.shared.statusBarStyle = .lightContent
        
    }

    
    func setNavigationBarHistory(title:String){
        let titleView = UILabel()
        titleView.text = title
        titleView.textColor = UIColor.white
        titleView.font = UIFont(name: "SukhumvitSet-Text", size: 20)
        let width = titleView.sizeThatFits(CGSize(width:CGFloat.greatestFiniteMagnitude , height: CGFloat.greatestFiniteMagnitude)).width
        titleView.frame = CGRect(origin:CGPoint.zero, size:CGSize(width: width, height: 500))
        self.navigationItem.titleView = titleView
        
        let buttonMore: UIButton = UIButton(type: UIButtonType.custom)
        buttonMore.frame = CGRect(x: 0, y: -30, width: 25, height: 25)
        buttonMore.setImage(UIImage(named:"ic_history"), for: UIControlState.normal)
        buttonMore.addTarget(self, action:#selector(historyClick(sender:)), for: .touchUpInside)
        let rightBarButtonItemEdit: UIBarButtonItem = UIBarButtonItem(customView: buttonMore)
        self.navigationItem.setRightBarButton(rightBarButtonItemEdit, animated: false)
        
        self.navigationController?.navigationBar.setGradientBackground(colors: [colorWithHexString(hex: StyleGuide.sharedInstance.gradientStartColor), colorWithHexString(hex: StyleGuide.sharedInstance.gradientEndColor)])

        self.navigationController?.navigationBar.alpha = 1
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
        
        self.navigationController?.navigationBar.setGradientBackground(colors: [colorWithHexString(hex: StyleGuide.sharedInstance.gradientStartColor), colorWithHexString(hex: StyleGuide.sharedInstance.gradientEndColor)])
    }

    @objc func backToPreviousView(sender:UIButton!){
        navigationController?.isHeroEnabled = true
        _ = navigationController?.popViewController(animated: true)
    }
    @objc func historyClick(sender:UIButton!){
    }

    @objc func moreClick(sender:UIButton!){
    }

    @objc func dismissBlur(sender:UIButton!){

    }
}

