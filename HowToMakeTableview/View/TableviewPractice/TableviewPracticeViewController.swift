//
//  TableviewPracticeViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 22/12/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

class TableviewPracticeViewController: UIViewController {
    
    @IBOutlet weak var tableviewConnectView: UITableView!
    
    @IBOutlet weak var textField: UITextField!
    
    let defaults = UserDefaults.standard
    var allCellsText = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.allCellsText = defaults.stringArray(forKey:"allCellsText")  ?? [String]()
        
        tableviewConnectView.tableFooterView = UIView()
    }
    
    @IBAction func addTextClicked(_ sender: UIButton) {
        
        addTextToCell()
        upDateData()
    }
    
    func addTextToCell() {
        
        allCellsText.append(textField.text ?? "")
        
        let indexPath = IndexPath(row: allCellsText.count - 1, section: 0)
        tableviewConnectView.beginUpdates()
        tableviewConnectView.insertRows(at: [indexPath], with: .automatic)
        tableviewConnectView.endUpdates()
        
        textField.text = ""
        view.endEditing(true)
        tableviewConnectView.reloadData()
    }
    
    func upDateData() {
        defaults.set(allCellsText, forKey: "allCellsText")
        defaults.synchronize()
    }
    
}

extension TableviewPracticeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("allCellsText.count is: \(allCellsText.count)")
        return allCellsText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellsText = allCellsText[indexPath.row]
        
        let cell = tableviewConnectView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! TableviewPracticeCell
        cell.cellLabel.text = cellsText
        cell.cellLabel.font = UIFont(name: "Didot", size: 16)
        
        //        let nan = indexPath.row % 2
        switch indexPath.row % 2 {
        case 0:
            cell.cellLabel.textColor = UIColor.black
            break
        case 1:
            cell.cellLabel.textColor = UIColor.white
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            allCellsText.remove(at: indexPath.row)
            upDateData()
        }
        
        tableviewConnectView.beginUpdates()
        tableviewConnectView.deleteRows(at: [indexPath], with: .automatic)
        tableviewConnectView.endUpdates()
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if(indexPath.row % 2 == 0) { //mod เลขคณิตมอดุลาร์
            cell.backgroundColor = UIColor.white
        } else {
            cell.backgroundColor = UIColor.gray
        }
        

    }
    
}
