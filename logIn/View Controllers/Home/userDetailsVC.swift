//
//  userDetailsVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 12/01/23.
//

import UIKit

class userDetailsVC: UIViewController {
    
    
    @IBOutlet weak var lblStdFName: UILabel!
    
    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var lbltemp: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    
    
    
    
    
    
    
    
    @IBOutlet weak var segOut: UISegmentedControl!
    
    
    
    @IBAction func segClicked(_ sender: UISegmentedControl) {
        
        if segOut.selectedSegmentIndex == 0 {
            
            lbltemp.text = "Personal"
            lbl1.text = "First Name :"
            lbl2.text = "Last Name :"
            lbl3.text = "Email Address :"
            lbl4.text = "Mobile Number :"
            lbl5.text = "Date Of Birth :"
            lbl6.text = "Blood Group :"
            
            lbltemp.isHidden = false
            
            lbl1.isHidden = false
            lbl2.isHidden = false
            lbl3.isHidden = false
            lbl4.isHidden = false
            lbl5.isHidden = false
            
        }
        if segOut.selectedSegmentIndex == 1 {
            
            lbltemp.text = "University"
            lbl1.text = "Student ID :"
            lbl2.text = "Department :"
            lbl3.text = "Semester :"
            
            lbl4.isHidden = true
            lbl5.isHidden = true
            lbl6.isHidden = true
            
            lbltemp.isHidden = false
            
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbltemp.isHidden = true
        lbltemp.text = "Personal"
        lbl1.text = "First Name :"
        lbl2.text = "Last Name :"
        lbl3.text = "Email Address :"
        lbl4.text = "Mobile Number :"
        lbl5.text = "Date Of Birth :"
        lbl6.text = "Blood Group :"
        //        self.setStudentDetails()
        //        self.stdDetailsUI()
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        
    }
    
    
    @IBAction func btnLogOutTapped(_ sender: Any) {
        isVaildData()
        
    }
    
    @IBAction func btnBackUserProfile(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func isVaildData() -> Bool {
        
        
        self.setAlertMessage1(titleMSG:"ALERT", message: "Do you want to LogOut ?")
        return false }
    func stdDetailsUI(){
        
        
    }
    //    func setStudentDetails() {
    //        //        self.stdDetailsImg.layer.cornerRadius = 10
    //        if studentOBJ != nil {
    //            self.imgStdDetails.image = UIImage(named: studentOBJ!.studentImage!)
    //            lblStdFName?.text = studentOBJ!.studentName!
    //            //            stdDetailsLbl2?.text = studentOBJ!.studentDepartment!
    //            //            stdDetailsLbl3?.text = studentOBJ!.studentSemester!
    //
    //        }
    //    }
}

extension userDetailsVC {
    
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
