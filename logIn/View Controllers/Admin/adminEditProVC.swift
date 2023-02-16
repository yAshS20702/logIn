//
//  adminEditProVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 24/01/23.
//

import UIKit
class adminEditProVC: UIViewController {
    
    @IBOutlet weak var txtAdminFName: UITextField!
    @IBOutlet weak var txtAdminLName: UITextField!
    @IBOutlet weak var txtAdminRole: UITextField!
    @IBOutlet weak var btnAdminEdit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        adminEditUI()
        // Do any additional setup after loading the view.
    }
    

    func adminEditUI(){
        
        self.txtAdminFName.layer.cornerRadius = 10
        self.txtAdminFName.layer.borderWidth = 1
        self.txtAdminFName.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAdminFName.placeholder = "Enter First Name"
        self.txtAdminFName.placeholderColors = ColorConstants.color_black
        
        self.txtAdminLName.layer.cornerRadius = 10
        self.txtAdminLName.layer.borderWidth = 1
        self.txtAdminLName.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAdminLName.placeholder = "Enter Last Name"
        self.txtAdminLName.placeholderColors = ColorConstants.color_black
        
        self.txtAdminRole.layer.cornerRadius = 10
        self.txtAdminRole.layer.borderWidth = 1
        self.txtAdminRole.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAdminRole.placeholder = "Enter Role"
        self.txtAdminRole.placeholderColors = ColorConstants.color_black
        
        self.btnAdminEdit.layer.cornerRadius = 20
        
        
    }

   
}
