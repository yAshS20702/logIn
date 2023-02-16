//
//  adminDashBoardViewController.swift
//  logIn
//
//  Created by Thinkwik 27 on 18/01/23.
//

import UIKit

class adminDashBoardViewController: UIViewController {
    
    var selectedData : String = ""
    var rowat : Int = 0
    
    var arrStdAdminList = [stdListAdmin]()
    @IBOutlet var lblAdminName: UIView!
    
    @IBOutlet weak var tblAdmin: UITableView!
    
    @IBOutlet weak var btnAddDetails: UIButton!
    override func viewDidLoad() {
        
        tblAdmin.delegate = self
        tblAdmin.dataSource = self
        super.viewDidLoad()
        self.loadXIB()
        self.setTempData()
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    func loadXIB(){
        tblAdmin.register(UINib(nibName: "stdDetailsAdmin", bundle: nil), forCellReuseIdentifier: "stdDetailsAdmin")
        
    }
    
    @IBAction func btnAdminAddStd(_ sender: Any) {
        if let vc  = storyboard?.instantiateViewController(withIdentifier: "adminStdAddVC")as? adminStdAddVC
        {
            if  let sheet = vc.sheetPresentationController{
                
                sheet.detents = [.medium()]
            }
            
            
            self.present(vc, animated: true ,completion: nil)
        }

    }
    
    
    
    func setTempData(){
        
        let adminStd = stdListAdmin.init(studentFName: "Yash Suthar" ,studentSem: "2nd" , studentImageAdmin: "yash_pic" ,studentDeptAdmin: "Computer Department")
        let adminStd1 = stdListAdmin.init(studentFName: "A" ,studentSem: "2nd" , studentImageAdmin: "boy" ,studentDeptAdmin: "Mechanical Department ")
        let adminStd2 = stdListAdmin.init(studentFName: "B" ,studentSem: "3rd" , studentImageAdmin: "man" ,studentDeptAdmin: "Civil Department")
        let adminStd3 = stdListAdmin.init(studentFName: "C" ,studentSem: "2nd" , studentImageAdmin: "boy" ,studentDeptAdmin: "Chemical Department")
        let adminStd4 = stdListAdmin.init(studentFName: "D" ,studentSem: "1st" , studentImageAdmin: "pro" ,studentDeptAdmin: "Mechanical Department")
        let adminStd5 = stdListAdmin.init(studentFName: "E" ,studentSem: "4th" , studentImageAdmin: "man" ,studentDeptAdmin: "Computer Department")
        let adminStd6 = stdListAdmin.init(studentFName: "F" ,studentSem: "1st" , studentImageAdmin: "pro" ,studentDeptAdmin: "Chemical Department")
        let adminStd7 = stdListAdmin.init(studentFName: "G" ,studentSem: "2nd" , studentImageAdmin: "boy" ,studentDeptAdmin: "Mechanical Department")
        let adminStd8 = stdListAdmin.init(studentFName: "H" ,studentSem: "3rd" , studentImageAdmin: "avatar" ,studentDeptAdmin: "Civil Department")
        let adminStd9 = stdListAdmin.init(studentFName: "I" ,studentSem: "1st" , studentImageAdmin: "pro" ,studentDeptAdmin: "Aeronautical Department")
        
        
        self.arrStdAdminList.append(adminStd)
        self.arrStdAdminList.append(adminStd1)
        self.arrStdAdminList.append(adminStd2)
        self.arrStdAdminList.append(adminStd3)
        self.arrStdAdminList.append(adminStd4)
        self.arrStdAdminList.append(adminStd5)
        self.arrStdAdminList.append(adminStd6)
        self.arrStdAdminList.append(adminStd7)
        self.arrStdAdminList.append(adminStd8)
        self.arrStdAdminList.append(adminStd9)
        
        
    }

    
}


extension adminDashBoardViewController: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "adminStdDetailsVC") as? adminStdDetailsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
        
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
      
        let action = UIContextualAction(style: .normal , title: "Edit") { action, view, complete in
        
            
        
        print("complete")
      }
      
      return UISwipeActionsConfiguration(actions: [action])
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrStdAdminList.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "stdDetailsAdmin", for: indexPath) as! stdDetailsAdmin
            cell.setAdminStdData(std: self.arrStdAdminList[indexPath.row])
            return cell
            
        }
        
        
        private func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> Int {
            // if indexPath.row == 0 {
            
            
            return 0
            
        }
        
        
        
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 120
            
            
        }
        
        func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
            return .delete
        }
        
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            
            if editingStyle == .delete {
                
                tblAdmin.beginUpdates()
                arrStdAdminList.remove(at: indexPath.row)
                tblAdmin.deleteRows(at: [indexPath], with:.fade)
                tblAdmin.endUpdates()
            }
        }
        
    }






