//
//  TableViewControllerConnectView.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 17/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit

var countries = ["PORTUGAL", "FRANCE", "RUSIA", "BRAZIL", "MEXICO"]
var details = ["ฟุตบอลทีมชาติโปรตุเกส (โปรตุเกส: Seleção Portuguesa de Futebol) เป็นตัวแทนทีมฟุตบอลระดับทีมชาติจากโปรตุเกส ปัจจุบันอยู่ภายใต้การดูแลของสหพันธ์ฟุตบอลโปรตุเกส", "ฟุตบอลทีมชาติฝรั่งเศส (ฝรั่งเศส: Équipe de France de football) เป็นตัวแทนทีมฟุตบอลจากประเทศฝรั่งเศส เคยเป็นชั้นนำทีมหนึ่งในทวีปยุโรป มีผลงานชนะเลิศฟุตบอลโลก 2 ครั้งใน ฟุตบอลโลก 1998 และ ฟุตบอลโลก 2018 และเป็นแชมป์ฟุตบอลชิงแชมป์แห่งชาติยุโรป ใน ฟุตบอลชิงแชมป์แห่งชาติยุโรป 2 ครั้ง ปี ค.ศ. 1984 และ ปี ค.ศ. 2000", "ฟุตบอลทีมชาติรัสเซีย (รัสเซีย: Сборная России по футболу) เป็นทีมฟุตบอลประจำประเทศรัสเซีย บริหารและควบคุมโดยสหภาพฟุตบอลรัสเซีย และร่วมแข่งขันกับทางยูฟ่า ทีมชาติรัสเซียมีผลงานในฟุตบอลโลก โดยได้ร่วมแข่งขันในฟุตบอลโลกรอบสุดท้ายสองครั้งใน ฟุตบอลโลก 1994 และ ฟุตบอลโลก 2002 และร่วมแข่งขันในฟุตบอลยูโร สามครั้ง ในปี 1996 2004 และ 2008 ซึ่งผลงานที่ดีที่สุดคือผ่านเข้าสู่รอบสี่ทีมสุดท้ายในปี 2008", "ฟุตบอลทีมชาติบราซิล (โปรตุเกส: Seleção Brasileira de Futebol) เป็นตัวแทนฟุตบอลจากประเทศบราซิล อยู่ภายใต้การควบคุมของสมาพันธ์ฟุตบอลบราซิล และเป็นทีมที่ประสบความสำเร็จมากที่สุดทีมหนึ่งในโลก ซึ่งชนะเลิศฟุตบอลโลก 5 ครั้ง ทีมชาติบราซิลมีชื่อเล่นของทีมว่า เซเลเซา (Seleção) ซึ่งแปลว่า การคัดเลือกหรือบุคคลที่เลือกมาแล้ว แต่ชื่อที่รู้จักโดยทั่วไปและแฟนฟุตบอลชาวไทยนิยมเรียกคือ แซมบา (Samba)", "ฟุตบอลทีมชาติเม็กซิโก (สเปน: Selección de fútbol de México) เป็นตัวแทนทีมฟุตบอลจากประเทศเม็กซิโก อยู่ภายใต้การดูแลของสหพันธ์ฟุตบอลเม็กซิโก (FEMEXFUT) ทีมชาติเม็กซิโกปัจจุบันติดอันดับโลกอยู่อันดับที่ 17 ของฟีฟ่า[1] และอันดับ 8 ของการจัดอันดับฟุตบอลโลกอีแอลโออีกด้วย"]
var myIndex = 0

class TableViewControllerConnectView: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return countries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        
        cell.textLabel?.text = countries[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        myIndex = indexPath.row
        performSegue(withIdentifier: "segueConnectView", sender: self)
    }
    
   
}
