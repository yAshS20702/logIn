//
//  notificationVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 12/01/23.
//

import UIKit

class notificationVC: UIViewController {
    
    @IBOutlet weak var tblNotification: UITableView!
    
    var arrnotification = [studentNotification]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tblNotification.delegate = self
        tblNotification.dataSource = self
        self.setDummyData()
        self.loadXIB()
        navigationController?.setNavigationBarHidden(true, animated: false)

    }
    
    func loadXIB() {
        tblNotification.register(UINib(nibName: "stdNotifications", bundle: nil), forCellReuseIdentifier: "stdNotifications")
        
        
    }
    
    func setDummyData() {
        let student = studentNotification.init(studentNotificationImage: "notification" ,studentNotificationTitle: "Result", studentNotificationBrief: "Check Your Result...")
        
        let student1 = studentNotification.init(studentNotificationImage: "home" ,studentNotificationTitle: "Sports Event", studentNotificationBrief: "Do  participate in sport event , click here to Know more")
        
        let student2 = studentNotification.init(studentNotificationImage: "notification" ,studentNotificationTitle: "Result", studentNotificationBrief: "Check Your Result...")
        
        let student3 = studentNotification.init(studentNotificationImage: "notification" ,studentNotificationTitle: "Result", studentNotificationBrief: "Check Your Result...")
        
        let student4 = studentNotification.init(studentNotificationImage: "notification" ,studentNotificationTitle: "Result", studentNotificationBrief: "Check Your Result...")
        
        let student5 = studentNotification.init(studentNotificationImage: "notification" ,studentNotificationTitle: "Result", studentNotificationBrief: "Check Your Result...")
        
        let student6 = studentNotification.init(studentNotificationImage: "notification" ,studentNotificationTitle: "Result", studentNotificationBrief: "Check Your Result...")
        
        let student7 = studentNotification.init(studentNotificationImage: "notification" ,studentNotificationTitle: "Result", studentNotificationBrief: "Check Your Result...")
        
       
        
        
        self.arrnotification.append(student)
        self.arrnotification.append(student1)
        self.arrnotification.append(student2)
        self.arrnotification.append(student3)
        self.arrnotification.append(student4)
        self.arrnotification.append(student5)
        self.arrnotification.append(student6)
        self.arrnotification.append(student7)



        

        self.tblNotification.reloadData()
    }
    

    

}


extension notificationVC: UITableViewDelegate , UITableViewDataSource {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrnotification.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stdNotifications", for: indexPath) as! stdNotifications
        cell.setData1(student: self.arrnotification[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
                
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // if indexPath.row == 0 {
        
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "notificationDetailsVC") as? notificationDetailsVC
            vc?.notificationOBJ = self.arrnotification[indexPath.row]
            self.navigationController?.pushViewController(vc!, animated: true)
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    

}
