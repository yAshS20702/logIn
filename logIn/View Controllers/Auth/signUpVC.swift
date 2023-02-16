//
//  signUpVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 09/01/23.
//

import UIKit
import IQActionSheetPickerView

enum dropType:String {
    case dept
    case semester
    case bloodGroup
}


class signUpVC: UIViewController , UITextFieldDelegate{
    
    @IBOutlet weak var txtStdID: UITextField!
    {
        didSet {
            txtStdID.placeholder = "Enter Student ID"
            txtStdID.placeholderColors = ColorConstants.color_black
        }
    }
    @IBOutlet weak var txtFname: UITextField!
    {
        didSet {
            txtFname.placeholder = "Enter Your First Name"
            txtFname.placeholderColors = ColorConstants.color_black
        }
    }
    @IBOutlet weak var txtLname: UITextField!
    {
        didSet {
            txtLname.placeholder = "Enter Your Last Name"
            txtLname.placeholderColors = ColorConstants.color_black
        }
    }
    
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var txtEmail: UITextField!
    {
        didSet {
            txtEmail.placeholder = "Enter Your Email Address"
            txtEmail.placeholderColors = ColorConstants.color_black
        }
    }
    @IBOutlet weak var txtMobileno: UITextField!
    {
        didSet {
            txtMobileno.placeholder = "Enter Your Mobile Number"
            txtMobileno.placeholderColors = ColorConstants.color_black
        }
    }
    @IBOutlet weak var txtDOB: UITextField!
    {
        didSet {
            txtDOB.placeholder = "Enter Your Date Of Birth"
            txtDOB.placeholderColors = ColorConstants.color_black
        }
    }
    @IBOutlet weak var txtDept: UITextField!
    {
        didSet {
            txtDept.placeholder = "Enter Your Department"
            txtDept.placeholderColors = ColorConstants.color_black
        }
    }
    @IBOutlet weak var txtSem: UITextField!
    {
        didSet {
            txtSem.placeholder = "Semester"
            txtSem.placeholderColors = ColorConstants.color_black
        }
    }
    @IBOutlet weak var txtBloodGroup: UITextField!
    {
        didSet {
            txtBloodGroup.placeholder = "Blood Group"
            txtBloodGroup.placeholderColors = ColorConstants.color_black
        }
    }
    @IBOutlet weak var txtPassword: UITextField!
    {
        didSet {
            txtPassword.placeholder = "Set a Password"
            txtPassword.placeholderColors = ColorConstants.color_black
        }
    }
    @IBOutlet weak var txtRePassword: UITextField!
    {
        didSet {
            txtRePassword.placeholder = "Enter Password Again"
            txtRePassword.placeholderColors = ColorConstants.color_black
        }
    }
    @IBOutlet weak var btnCreate: UIButton!
    
    var arrDeptlist = ["Mechanical Department", "Computer Department", "Electrical Department","Chemical Department","Aeronautical Department" ,"Civil Department"]
    var arrSemesterlist = ["1st", "2nd", "3rd","4th","5th" ,"6th","7th","8th"]
    var arrBloodGrouplist = ["o+", "o-", "A+","A-","B+" ,"B-","AB+","AB-"]
    
    var textype: dropType = .dept
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.signUpUI()
        navigationController?.setNavigationBarHidden(true, animated: false)
        self.hideKeyboardTappedAround()
//        txtStdID.delegate = self
//        txtFname.delegate = self
//        txtLname.delegate = self
//        txtEmail.delegate = self
//        txtSem.delegate = self
//        txtDOB.delegate = self
//        txtDept.delegate = self
//        txtBloodGroup.delegate = self
//        txtPassword.delegate = self
//        txtRePassword.delegate = self
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func btnSignUpBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func signUpUI()
    {
        self.txtStdID.layer.cornerRadius = 10
        self.txtStdID.setLeftPaddingPoints(10)
        self.txtStdID.layer.borderColor = UIColor.black.cgColor
        self.txtStdID.layer.borderWidth = 1
        self.txtStdID.placeholder = "Enter Your Student ID .."
        self.txtStdID.placeholderColors = ColorConstants.Color_light_Grey
        
        self.txtFname.layer.cornerRadius = 10
        self.txtFname.setLeftPaddingPoints(10)
        self.txtFname.layer.borderColor = UIColor.black.cgColor
        self.txtFname.layer.borderWidth = 1
        self.txtFname.placeholder = "Enter Your First Name.."
        self.txtFname.placeholderColors = ColorConstants.Color_light_Grey
        
        
        self.txtLname.layer.cornerRadius = 10
        self.txtLname.setLeftPaddingPoints(10)
        self.txtLname.layer.borderColor = UIColor.black.cgColor
        self.txtLname.layer.borderWidth = 1
        self.txtLname.placeholder = "Enter Your Last Name.."
        self.txtLname.placeholderColors = ColorConstants.Color_light_Grey
        
        
        self.txtEmail.layer.cornerRadius = 10
        self.txtEmail.setLeftPaddingPoints(10)
        self.txtEmail.layer.borderColor = UIColor.black.cgColor
        self.txtEmail.layer.borderWidth = 1
        self.txtEmail.placeholder = "Enter Your Email Address.."
        self.txtEmail.placeholderColors = ColorConstants.Color_light_Grey
        
        
        self.txtMobileno.layer.cornerRadius = 10
        self.txtMobileno.setLeftPaddingPoints(10)
        self.txtMobileno.layer.borderColor = UIColor.black.cgColor
        self.txtMobileno.layer.borderWidth = 1
        self.txtMobileno.placeholder = "Enter Your Mobline Number.."
        self.txtMobileno.placeholderColors = ColorConstants.Color_light_Grey
        
        
        self.txtDOB.layer.cornerRadius = 10
        self.txtDOB.setLeftPaddingPoints(10)
        self.txtDOB.layer.borderColor = UIColor.black.cgColor
        self.txtDOB.layer.borderWidth = 1
        self.txtDOB.placeholder = "Enter Your Date Of Birth.."
        self.txtDOB.placeholderColors = ColorConstants.Color_light_Grey
        
        
        self.txtDept.layer.cornerRadius = 10
        self.txtDept.setLeftPaddingPoints(10)
        self.txtDept.layer.borderColor = UIColor.black.cgColor
        self.txtDept.layer.borderWidth = 1
        self.txtDept.placeholder = "Enter Your Department.."
        self.txtDept.placeholderColors = ColorConstants.Color_light_Grey
        
        
        self.txtSem.layer.cornerRadius = 10
        self.txtSem.setLeftPaddingPoints(10)
        self.txtSem.layer.borderColor = UIColor.black.cgColor
        self.txtSem.layer.borderWidth = 1
        self.txtSem.placeholder = "Semester.."
        self.txtSem.placeholderColors = ColorConstants.Color_light_Grey
        
        
        self.txtBloodGroup.layer.cornerRadius = 10
        self.txtBloodGroup.setLeftPaddingPoints(10)
        self.txtBloodGroup.layer.borderColor = UIColor.black.cgColor
        self.txtBloodGroup.layer.borderWidth = 1
        self.txtBloodGroup.placeholder = "Blood Group.."
        self.txtBloodGroup.placeholderColors = ColorConstants.Color_light_Grey
        
        
        self.txtPassword.layer.cornerRadius = 10
        self.txtPassword.setLeftPaddingPoints(10)
        self.txtPassword.layer.borderColor = UIColor.black.cgColor
        self.txtPassword.layer.borderWidth = 1
        self.txtPassword.placeholder = "Set a Password.."
        self.txtPassword.placeholderColors = ColorConstants.Color_light_Grey
        
        
        self.txtRePassword.layer.cornerRadius = 10
        self.txtRePassword.setLeftPaddingPoints(10)
        self.txtRePassword.layer.borderColor = UIColor.black.cgColor
        self.txtRePassword.layer.borderWidth = 1
        self.txtRePassword.placeholder = "Enter Password Again.."
        self.txtRePassword.placeholderColors = ColorConstants.Color_light_Grey
        
        self.img.layer.borderWidth = 1
        self.img.layer.borderColor = UIColor.black.cgColor
        self.img.layer.cornerRadius = 10
        self.img.layer.cornerRadius = self.img.frame.size.width / 2
        
        self.btnCreate.layer.cornerRadius = 20
        self.txtDOB.delegate = self
        self.txtDOB.setImage(direction: .Right, imageName: "dropdown_black", Frame: CGRect(x: 12, y: 0, width: 20, height: 20), backgroundColor: .clear)
        self.txtSem.setImage(direction: .Right, imageName: "dropdown_black", Frame: CGRect(x: 12, y: 0, width: 20, height: 20), backgroundColor: .clear)
        self.txtDept.setImage(direction: .Right, imageName: "dropdown_black", Frame: CGRect(x: 12, y: 0, width: 20, height: 20), backgroundColor: .clear)
        self.txtBloodGroup.setImage(direction: .Right, imageName: "dropdown_black", Frame: CGRect(x: 12, y: 0, width: 20, height: 20), backgroundColor: .clear)
        self.txtDept.delegate = self
        self.txtBloodGroup.delegate = self
        self.txtSem.delegate = self
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == txtDOB {
            self.dobView()
            return true
        }
        
        if textField == self.txtDept {
            self.setDeptDropDown()
            return true
        }
        
        if textField == txtBloodGroup {
            self.setBloodGroupDropDown()
            return true
        }
        
        if textField == self.txtSem {
            self.setSemesterDropDown()
            return true
        }
        return false
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        textField.resignFirstResponder()

        return true
    }

    
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.txtStdID:
            self.txtFname.becomeFirstResponder()
        case self.txtFname:
            self.txtLname.becomeFirstResponder()
        case self.txtLname:
            self.txtEmail.becomeFirstResponder()
        case self.txtEmail:
            self.txtMobileno.becomeFirstResponder()
        case self.txtMobileno:
            self.txtDOB.becomeFirstResponder()
        case self.txtDOB:
            self.txtDept.becomeFirstResponder()
        case self.txtDept:
            self.txtSem.becomeFirstResponder()
        case self.txtSem:
            self.txtBloodGroup.becomeFirstResponder()
        case self.txtBloodGroup:
            self.txtPassword.becomeFirstResponder()
        case self.txtPassword:
            self.txtRePassword.becomeFirstResponder()
        default:
            self.txtRePassword.resignFirstResponder()
        }
    }
    
    private func setDeptDropDown() {
        let dropdownDept = IQActionSheetPickerView(title: nil, delegate: self)
        dropdownDept.pickerViewBackgroundColor = UIColor.white
        dropdownDept.pickerComponentsColor = UIColor.black
        dropdownDept.actionToolbar!.doneButton?.tintColor = UIColor.black
        dropdownDept.actionToolbar!.cancelButton?.tintColor = UIColor.black
        dropdownDept.actionToolbar?.titleButton?.titleFont =  UIFont.systemFont(ofSize: 14)
        dropdownDept.actionToolbar?.titleButton?.titleColor = UIColor.black
        dropdownDept.titlesForComponents = [arrDeptlist]
        textype = .dept
        dropdownDept.show(completion: nil)
    }
    
    private func setBloodGroupDropDown() {
        let dropdownDept = IQActionSheetPickerView(title: nil, delegate: self)
        dropdownDept.pickerViewBackgroundColor = UIColor.white
        dropdownDept.pickerComponentsColor = UIColor.black
        dropdownDept.actionToolbar!.doneButton?.tintColor = UIColor.black
        dropdownDept.actionToolbar!.cancelButton?.tintColor = UIColor.black
        dropdownDept.actionToolbar?.titleButton?.titleFont =  UIFont.systemFont(ofSize: 14)
        dropdownDept.actionToolbar?.titleButton?.titleColor = UIColor.black
        dropdownDept.titlesForComponents = [arrBloodGrouplist]
        textype = .bloodGroup
        dropdownDept.show(completion: nil)
    }
    
    private func setSemesterDropDown() {
        let dropdownDept = IQActionSheetPickerView(title: nil, delegate: self)
        dropdownDept.pickerViewBackgroundColor = UIColor.white
        dropdownDept.pickerComponentsColor = UIColor.black
        dropdownDept.actionToolbar!.doneButton?.tintColor = UIColor.black
        dropdownDept.actionToolbar!.cancelButton?.tintColor = UIColor.black
        dropdownDept.actionToolbar?.titleButton?.titleFont =  UIFont.systemFont(ofSize: 14)
        dropdownDept.actionToolbar?.titleButton?.titleColor = UIColor.black
        dropdownDept.titlesForComponents = [arrSemesterlist]
        textype = .semester
        dropdownDept.show(completion: nil)
    }
    
    
    func dobView() {
        var datePickerView = UIDatePicker()
        datePickerView = UIDatePicker.init(frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: 200))
        datePickerView.datePickerMode = .date
        datePickerView.preferredDatePickerStyle = .wheels
        datePickerView.maximumDate = Date()
        txtDOB.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(handleDobPicker(sender:)), for: .valueChanged)
        let doneButton = UIBarButtonItem.init(title: "Done", style: .done, target: self, action: #selector(self.datePickerDone))
        doneButton.tintColor = UIColor.black
        let toolBar = UIToolbar.init(frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: 44))
        toolBar.setItems([UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil), doneButton], animated: true)
        txtDOB.inputAccessoryView = toolBar
    }
    
    @objc func datePickerDone() {
        txtDOB.resignFirstResponder()
    }
    
    
    @objc func handleDobPicker(sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        txtDOB.text = dateFormatter.string(from: sender.date)
    }
    
    @IBAction func btnCreateTapped(_ sender: Any) {
        
        if isVaildData(){
            
            let vc = storyboard?.instantiateViewController(withIdentifier: "newHomeController") as? newHomeController
            self.navigationController?.pushViewController(vc!, animated: true)
            
        }
    }
    func isVaildData() -> Bool {
        
        if self.txtStdID.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Student Id is Empty")
            return false
        }
        if self.txtFname.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "First Name  field is Empty")
            return false
        }
        if self.txtLname.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Last Name is Empty")
            return false
        }
        if self.txtEmail.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Email field is Empty")
            return false
        }
        if self.txtMobileno.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Please Enter Mobile Number")
            return false
        }
        if self.txtDOB.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Please Enter Date of Birth")
            return false
        }
        if self.txtDept.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Please Enter Department")
            return false
        }
        if self.txtSem.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Please Enter Semester")
            return false
        }
        if self.txtBloodGroup.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Please Enter Blood Group")
            return false
        }
        if self.txtPassword.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Password can not be a Empty")
            return false
        }
        if self.txtRePassword.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Please Enter Password again")
            return false
        }
        return true
    }
}
//extension signUpVC : UITextFieldDelegate {
//
////    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
////        if textField == txtDOB {
////            self.dobView()
////            return true
////        }
////
////        if textField == self.txtDept {
////            self.setDeptDropDown()
////            return true
////        }
////
////        if textField == txtBloodGroup {
////            self.setBloodGroupDropDown()
////            return true
////        }
////
////        if textField == self.txtSem {
////            self.setSemesterDropDown()
////            return true
////        }
////        return false
////    }
//
////    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
////        textField.resignFirstResponder()
////        self.switchBasedNextTextField(textField)
////
////        return true
////    }
//}
extension signUpVC: IQActionSheetPickerViewDelegate {
    
    func actionSheetPickerView(_ pickerView: IQActionSheetPickerView, didSelectTitles titles: [String]) {
        if let selected = titles[0] as? String {
            if textype == .dept {
                self.txtDept.text = selected
            }
            else if textype == .bloodGroup {
                self.txtBloodGroup.text = selected
            }
            else if   textype == .semester {
                self.txtSem.text = selected
            }
            else{
                
            }
        }
        
    }
    
}
