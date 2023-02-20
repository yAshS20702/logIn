//
//  ViewController.swift
//  logIn
//
//  Created by Thinkwik 27 on 09/01/23.
//

import UIKit


class ViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var btnPassShow: UIButton!
    @IBOutlet weak var imgSignin: UIImageView!
    @IBOutlet weak var txtPassword: UITextField!{
        didSet {
            txtPassword.placeholder = "Password"
            txtPassword.placeholderColors = ColorConstants.Color_light_Grey
        }
    }
    var iconClick = true
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        txtEmail.delegate = self
        txtPassword.delegate = self
        self.hideKeyboardTappedAround()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
    
    
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.txtEmail:
            self.txtPassword.becomeFirstResponder()
        default:
            self.txtPassword.resignFirstResponder()
        }
    }
    
    func setupUI() {
        self.txtEmail.layer.cornerRadius = 10
        self.txtEmail.setLeftPaddingPoints(10)
        self.txtEmail.layer.borderColor = UIColor.black.cgColor
        self.txtEmail.layer.borderWidth = 1
        self.txtPassword.layer.cornerRadius = 10
        self.txtPassword.setLeftPaddingPoints(10)
        self.txtPassword.layer.borderColor = UIColor.black.cgColor
        self.txtPassword.layer.borderWidth = 1
        self.btnLogin.layer.cornerRadius = 20
    }
    
    
    
    @IBAction func iconAction(sender: AnyObject) {
        if iconClick {

            txtPassword.isSecureTextEntry = false
        } else {
            txtPassword.isSecureTextEntry = true
        }
        iconClick = !iconClick
    }
    
    
    
    @IBOutlet weak var txtEmail: UITextField! {
        didSet {
            txtEmail.placeholder = "Email"
            txtEmail.placeholderColors = ColorConstants.Color_light_Grey
        }
    }
    
    @IBAction func btnForgetTapped(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "forgetPassVC") as? forgetPassVC
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    @IBAction func btnLoginTapped(_ sender: Any){
        
        if self.txtEmail.text == "yash" && self.txtPassword.text == "1234"{
            

            let vc = storyboard?.instantiateViewController(withIdentifier: "newHomeController") as? newHomeController
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        else
        {
            self.setAlertMessage(titleMSG: "ERROR", message: "Please Enter right ID or Password")
        }
        dataChange()

    }
    
    @IBAction func btnAdminTapped(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "adminLogIn") as? adminLogIn
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    
    
    
    @IBAction func btnSignupTapped(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "signUpVC") as? signUpVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
     func dataChange()
    {
        txtEmail.text = nil
        txtPassword.text = nil
    }
    
}
extension UITextField {
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
        
    }
    enum Direction
    {
        case Left
        case Right
    }
    
    func setImage(direction:Direction,imageName:String,Frame:CGRect,backgroundColor:UIColor)
    {
        let View = UIView(frame: CGRect(x: Frame.origin.x, y: Frame.origin.y, width: Frame.size.width + 25, height: Frame.size.height))
        View.backgroundColor = backgroundColor
        
        let imageView = UIImageView(frame: Frame)
        imageView.image = UIImage(named: imageName)
        imageView.tintColor = .white
        View.addSubview(imageView)
        if Direction.Left == direction
        {
            self.leftViewMode = .always
            self.leftView = View
        }
        else
        {
            self.rightViewMode = .always
            self.rightView = View
        }
    }
    
    var placeholderColors: UIColor? {
        get {
            return self.placeholderColors
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
    func leftImage(ImageviewNamed:String)
    {
        let imgview = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
        imgview.image = UIImage(named: ImageviewNamed)
        let imgviewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imgviewContainer.addSubview(imgview)
        leftView = imgviewContainer
        leftViewMode = .always
        self.tintColor = ColorConstants.Color_light_Grey
    }
    
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame:
                                    CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
                                                CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    
}

extension UIViewController {
    
    func setAlertMessage(titleMSG:String?, message:String?) {
        let alertController = UIAlertController(title: titleMSG, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .cancel) { (action:UIAlertAction!) in
            print("Ok button tapped");
            
        }
        
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion:nil)
    }
    func hideKeyboardTappedAround(){
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(ViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
        
        
    }
    
    @objc func dismissKeyboard()
    {
        view.endEditing (true)
        
    }
    
    
    
}


