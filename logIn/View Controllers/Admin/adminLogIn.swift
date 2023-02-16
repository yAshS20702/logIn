//
//  adminLogIn.swift
//  logIn
//
//  Created by Thinkwik 27 on 18/01/23.
//

import UIKit

class adminLogIn: UIViewController , UITextFieldDelegate {
    
    var iconClick = true
    @IBOutlet weak var txtAdminEmail: UITextField!
    {
        didSet
        {
            txtAdminEmail.placeholder = "Email"
            txtAdminEmail.placeholderColors = ColorConstants.Color_light_Grey
        }
    }
    @IBOutlet weak var txtAdminPass: UITextField!
    {
        didSet {
            txtAdminPass.placeholder = "Password"
            txtAdminPass.placeholderColors = ColorConstants.Color_light_Grey
        }
    }
    
   
    @IBOutlet weak var btnAdminLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        adminUI()
        self.hideKeyboardTappedAround()
        txtAdminPass.delegate = self
        txtAdminEmail.delegate = self
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
    
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.txtAdminEmail:
            self.txtAdminPass.becomeFirstResponder()
        default:
            self.txtAdminPass.resignFirstResponder()
        }
    }
    
    @IBAction func iconAction(sender: AnyObject) {
        if iconClick {
            txtAdminPass.isSecureTextEntry = false
        } else {
            txtAdminPass.isSecureTextEntry = true
        }
        iconClick = !iconClick
    }
    
    
    
    @IBAction func adminLogIn(_ sender: Any) {
        
        if self.txtAdminEmail.text == "admin" && self.txtAdminPass.text == "admin"{
            let vc = storyboard?.instantiateViewController(withIdentifier: "adminDashBoardViewController") as? adminDashBoardViewController
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        else
        {
            self.setAlertMessage(titleMSG: "ERROR", message: "Please Enter right ID or Password")
        }
        dataChange()
        
    }
    
    func dataChange()
    {
        txtAdminEmail.text = nil
        txtAdminPass.text = nil
    }
    
    func adminUI() {
        self.txtAdminEmail.layer.cornerRadius = 10
        self.txtAdminEmail.setLeftPaddingPoints(10)
        self.txtAdminEmail.layer.borderColor = UIColor.black.cgColor
        self.txtAdminEmail.layer.borderWidth = 1
        self.txtAdminPass.layer.cornerRadius = 10
        self.txtAdminPass.setLeftPaddingPoints(10)
        self.txtAdminPass.layer.borderColor = UIColor.black.cgColor
        self.txtAdminPass.layer.borderWidth = 1
        
        self.btnAdminLogin.layer.cornerRadius = 20
    }
    
 
}
