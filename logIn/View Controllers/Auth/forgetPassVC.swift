//
//  forgetPassVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 09/01/23.
//

import UIKit

class forgetPassVC: UIViewController {
    @IBOutlet weak var btnForgotpassTapped: UIButton!
    
    @IBOutlet weak var txtForgotPass: UITextField!
    {
        didSet{
            txtForgotPass.placeholder = "Enter Your Email Address"
            txtForgotPass.placeholderColors = ColorConstants.Color_light_Grey
        }
        
    }
//    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.forgotPassUI()
        
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    
    func forgotPassUI(){
        
        self.txtForgotPass.layer.cornerRadius = 10
        self.txtForgotPass.layer.borderColor = UIColor.black.cgColor
        self.txtForgotPass.layer.borderWidth = 1
        self.txtForgotPass.setLeftPaddingPoints(10)
        
        self.btnForgotpassTapped.layer.cornerRadius = 20
    }
    
    
    @IBAction func btnbackForgetPassTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    @IBAction func btnForgotpassTapped(_ sender: Any) {
        if isVaildData(){
            self.showToast(message: "Request Sent", font: .systemFont(ofSize: 12.0))
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    func isVaildData() -> Bool {
        if self.txtForgotPass.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Email field is Empty")
            return false
            
        }
        
        return true
    }
    
}

extension UIViewController {

func showToast(message : String, font: UIFont) {

    let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
    toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
    toastLabel.textColor = UIColor.white
    toastLabel.font = font
    toastLabel.textAlignment = .center;
    toastLabel.text = message
    toastLabel.alpha = 1.0
    toastLabel.layer.cornerRadius = 10;
    toastLabel.clipsToBounds  =  true
    self.view.addSubview(toastLabel)
    UIView.animate(withDuration: 3.0, delay: 0.1, options: .curveEaseOut, animations: {
         toastLabel.alpha = 0.0
    }, completion: {(isCompleted) in
        toastLabel.removeFromSuperview()
    })
} }



