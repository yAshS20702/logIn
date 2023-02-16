//
//  adminNotificationVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 01/02/23.
//

import UIKit


class adminNotificationVC: UIViewController {
    @IBOutlet weak var btnevents: UIButton!
    @IBOutlet weak var btnNotify: UIButton!
    @IBOutlet weak var btnFeedbackCheck: UIButton!
    @IBOutlet weak var btnAssignment: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adminNotifyUI()

    }
    
    func adminNotifyUI()
    {

        self.btnevents.layer.cornerRadius = 20
        self.btnevents.layer.borderWidth = 1
        self.btnevents.layer.borderColor = ColorConstants.color_black.cgColor
        
        self.btnNotify.layer.cornerRadius = 20
        self.btnNotify.layer.borderWidth = 1
        self.btnNotify.layer.borderColor = ColorConstants.color_black.cgColor
        
        self.btnFeedbackCheck.layer.cornerRadius = 20
        self.btnFeedbackCheck.layer.borderWidth = 1
        self.btnFeedbackCheck.layer.borderColor = ColorConstants.color_black.cgColor
        
        self.btnAssignment.layer.cornerRadius = 20
        self.btnAssignment.layer.borderWidth = 1
        self.btnAssignment.layer.borderColor = ColorConstants.color_black.cgColor
    }
    

}
