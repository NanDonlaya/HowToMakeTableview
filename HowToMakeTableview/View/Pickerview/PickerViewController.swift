//
//  PickerViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 8/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var showPicker: UIPickerView!
    
    var dataPickerView = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        showPicker.dataSource = self
//        showPicker.delegate = self
    }
    
    //REMARK: - Datasource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return dataPickerView.breedsType.count
    }
    
    //REMARK: - Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return dataPickerView.breedsType[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        showLabel.text = dataPickerView.breedsType[row]
    }


}
