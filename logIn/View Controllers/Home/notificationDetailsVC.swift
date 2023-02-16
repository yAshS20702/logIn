//
//  notificationDetailsVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 17/01/23.
//

import UIKit

class notificationDetailsVC: UIViewController {

    
    var notificationOBJ : studentNotification?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    @IBAction func btnNotificationDetails(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
