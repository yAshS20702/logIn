//
//  adminProfileVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 23/01/23.
//

import UIKit

class adminProfileVC: UIViewController {
    
    @IBOutlet weak var btnEditAdmin: UIButton!
    @IBOutlet weak var imgAdminPro: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        adminProUI()
        
        // Do any additional setup after loading the view.
    }
    func adminProUI()
    {
        self.imgAdminPro.layer.borderWidth = 1
        self.imgAdminPro.layer.borderColor = UIColor.black.cgColor
        self.imgAdminPro.layer.cornerRadius = 10
        self.imgAdminPro.layer.cornerRadius = self.imgAdminPro.frame.size.width / 2
        
        self.btnEditAdmin.layer.cornerRadius = 20
        
    }
    
    @IBAction func btnEditAdmin(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "adminEditProVC") as? adminEditProVC{
            if let sheet = vc.sheetPresentationController{
                
                sheet.detents = [.medium()]
                
            }
            self.present(vc, animated: true)
        }
    }
    @IBAction func adminLogOut(_ sender: UIButton) {
        isVaildData()
    }
    func isVaildData() -> Bool {
        
        
        self.setAlertMessage1(titleMSG:"ALERT", message: "Do you want to LogOut ?")
        return false
        
    }
    
    
}
extension adminProfileVC {
    
    func setAlertMessage1(titleMSG:String?, message:String?) {
        let alertController = UIAlertController(title: titleMSG, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Yes", style: .cancel) { (action:UIAlertAction!) in
            print("Ok button tapped");
            self.navigationController?.popToRootViewController(animated: true)
        }
        let CancelAction = UIAlertAction(title: "No", style: .default){ (action:UIAlertAction!) in
            print("Cancel button tapped");
        }
        alertController.addAction(OKAction)
        alertController.addAction(CancelAction)
        self.present(alertController, animated: true, completion:nil)
    }
}


