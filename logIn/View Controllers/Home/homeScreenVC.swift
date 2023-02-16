//
//  homeScreenVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 09/01/23.
//

import UIKit
import MaterialComponents.MaterialBottomNavigation

class homeScreenVC: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    var arrstudentList = [studentList]()
    var searching = false
    var arrFilteredStudent = [studentList]()
    @IBOutlet weak var txtSearch: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        self.loadXIB()
        self.homeUI()
        txtSearch.leftImage(ImageviewNamed: "search")
        self.setDummyData()
        self.navigationController?.isNavigationBarHidden = true
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func homeUI(){
        
        
        self.txtSearch.layer.cornerRadius = 10
        self.txtSearch.setLeftPaddingPoints(10)
        self.txtSearch.layer.borderColor = UIColor.black.cgColor
        self.txtSearch.layer.borderWidth = 1
        
        // self.txtSearch.delegate = self
        
        txtSearch.placeholder = "Search here.."
        txtSearch.placeholderColors = ColorConstants.Color_light_Grey
        

    }
    
    
    @objc func clearTextWords(){
        self.txtSearch.text = ""
        self.txtSearch.resignFirstResponder()
        self.setDummyData()
    }
    
    func loadXIB() {
        tblView.register(UINib(nibName: "stdList", bundle: nil), forCellReuseIdentifier: "stdList")
        tblView.register(UINib(nibName: "stdHeaderView", bundle: nil), forCellReuseIdentifier: "stdHeaderView")
        
    }
    
    func setDummyData() {
        let student = studentList.init(studentName: "Yash Suthar" ,studentImage: "yash_pic", studentSemester: "5th", studentDepartment: "Computer Department")
        let student1 = studentList.init(studentName: "Hemang Solanki" ,studentImage: "hemang_Photo", studentSemester: "6th", studentDepartment: "Civil Department")
        let student2 = studentList.init(studentName: "A" ,studentImage: "avatar", studentSemester: "1st", studentDepartment: "Computer Department")
        let student3 = studentList.init(studentName: "B" ,studentImage: "pro", studentSemester: "3rd", studentDepartment: "Civil Department")
        let student4 = studentList.init(studentName: "C" ,studentImage: "avatar", studentSemester: "5th", studentDepartment: "Electrical Department")
        let student5 = studentList.init(studentName: "D" ,studentImage: "man", studentSemester: "6th", studentDepartment: "Information & Technology Department")
        let student6 = studentList.init(studentName: "E" ,studentImage: "pro", studentSemester: "7th", studentDepartment: "Mechanical Department")
        let student7 = studentList.init(studentName: "F" ,studentImage: "man", studentSemester: "8th", studentDepartment: "Computer Department")
        let student8 = studentList.init(studentName: "G" ,studentImage: "pro", studentSemester: "8th", studentDepartment: "Electrical Department")
        let student9 = studentList.init(studentName: "H" ,studentImage: "pro", studentSemester: "2nd", studentDepartment: "Computer Department")
        
        self.arrstudentList.append(student)
        self.arrstudentList.append(student1)
        self.arrstudentList.append(student2)
        self.arrstudentList.append(student3)
        self.arrstudentList.append(student4)
        self.arrstudentList.append(student5)
        self.arrstudentList.append(student6)
        self.arrstudentList.append(student7)
        self.arrstudentList.append(student8)
        self.arrstudentList.append(student9)
        
        self.tblView.reloadData()
    }
    
}



extension homeScreenVC: UITableViewDelegate , UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if self.searching
        {
            return 1
        }
        else{
            return 1
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrstudentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if self.searching{
            let cell = tableView.dequeueReusableCell(withIdentifier: "stdList", for: indexPath) as! stdList
            cell.setData(student: self.arrFilteredStudent[indexPath.row])
            cell.layoutIfNeeded()
            cell.selectionStyle = .none
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "stdList", for: indexPath) as! stdList
            cell.setData(student: self.arrstudentList[indexPath.row])
            cell.layoutIfNeeded()
            cell.selectionStyle = .none
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // if indexPath.row == 0 {
        if self.searching{
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "studentDetailsVC") as? studentDetailsVC
            vc?.studentOBJ = self.arrFilteredStudent[indexPath.row]
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        else
        {
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "studentDetailsVC") as? studentDetailsVC
            vc?.studentOBJ = self.arrstudentList[indexPath.row]
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        
        
        //}
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if self.searching
        {
            return 110
        }
        else
        {
            return 110
        }
    }
    
    
}

extension homeScreenVC : UITextViewDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let searchText  = textField.text! + string
        self.arrFilteredStudent.removeAll()
        if searchText.count >= 1 {
            self.searching = true
            arrFilteredStudent = arrstudentList.filter({ (result) -> Bool in
                return result.studentName!.range(of: searchText, options: .caseInsensitive) != nil
            })
            tblView.reloadData()
        }else{
            self.searching = false
            arrFilteredStudent.removeAll()
            self.setDummyData()
        }
        return true
    }
   
}




