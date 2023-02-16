//
//  adminStdAddVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 23/01/23.
//

import UIKit
import IQActionSheetPickerView

class adminStdAddVC: UIViewController {

    @IBOutlet weak var txtAddName: UITextField!
    @IBOutlet weak var txtAddDept: UITextField!
    @IBOutlet weak var txtAddSem: UITextField!
    @IBOutlet weak var btnAddStudents: UIButton!
    
    var arrAdminStdDept = ["Mechanical Department", "Computer Department", "Electrical Department","Chemical Department","Aeronautical Department" ,"Civil Department"]
    var arrAdminStdSem = ["1st", "2nd", "3rd","4th","5th" ,"6th","7th","8th"]
    
    var textype: dropType = .dept
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stdAddUI()
        
        // Do any additional setup after loading the view.
    }
    

    func stdAddUI()
    {
        
        
        self.txtAddName.layer.cornerRadius = 10
        self.txtAddName.layer.borderWidth = 1
        self.txtAddName.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAddName.setLeftPaddingPoints(10)
        self.txtAddName.placeholder = "Enter Name"
        self.txtAddName.placeholderColors = ColorConstants.Color_light_Grey
    
        
        self.txtAddDept.layer.cornerRadius = 10
        self.txtAddDept.layer.borderWidth = 1
        self.txtAddDept.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAddDept.setLeftPaddingPoints(10)
        self.txtAddDept.placeholder = "Enter Department"
        self.txtAddDept.placeholderColors = ColorConstants.Color_light_Grey
        self.txtAddDept.setImage(direction: .Right, imageName: "dropdown_black", Frame: CGRect(x: 12, y: 0, width: 20, height: 20), backgroundColor: .clear)

        
        
        self.txtAddSem.layer.cornerRadius = 10
        self.txtAddSem.layer.borderWidth = 1
        self.txtAddSem.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAddSem.setLeftPaddingPoints(10)
        self.txtAddSem.placeholder = "Enter Sem"
        self.txtAddSem.placeholderColors = ColorConstants.Color_light_Grey
        self.txtAddSem.setImage(direction: .Right, imageName: "dropdown_black", Frame: CGRect(x: 12, y: 0, width: 20, height: 20), backgroundColor: .clear)

        
        self.btnAddStudents.layer.cornerRadius = 20

        
    }
    
    
    private func setDeptDropDown() {
        let dropdownDept = IQActionSheetPickerView(title: nil, delegate: self)
        dropdownDept.pickerViewBackgroundColor = UIColor.white
        dropdownDept.pickerComponentsColor = UIColor.black
        dropdownDept.actionToolbar!.doneButton?.tintColor = UIColor.black
        dropdownDept.actionToolbar!.cancelButton?.tintColor = UIColor.black
        dropdownDept.actionToolbar?.titleButton?.titleFont =  UIFont.systemFont(ofSize: 14)
        dropdownDept.actionToolbar?.titleButton?.titleColor = UIColor.black
        dropdownDept.titlesForComponents = [arrAdminStdDept]
        textype = .dept
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
        dropdownDept.titlesForComponents = [arrAdminStdSem]
        textype = .semester
        dropdownDept.show(completion: nil)
    }

    @IBAction func btnaddStdTapped(_ sender: Any) {
        showToast(message: "Added :)", font: .systemFont(ofSize: 12) )
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
        }
    }
}


extension adminStdAddVC : UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        
        if textField == self.txtAddDept {
            self.setDeptDropDown()
            return true
        }
        
        
        if textField == self.txtAddSem {
            self.setSemesterDropDown()
            return true
        }
        return false
    }
}

extension adminStdAddVC: IQActionSheetPickerViewDelegate {
    
    func actionSheetPickerView(_ pickerView: IQActionSheetPickerView, didSelectTitles titles: [String]) {
        if let selected = titles[0] as? String {
            if textype == .dept {
                self.txtAddDept.text = selected
            }
            else if   textype == .semester {
                self.txtAddSem.text = selected
            }
            else{
                
            }
        }
        
    }
    
}
