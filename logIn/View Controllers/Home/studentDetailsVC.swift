//
//  studentDetailsVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 10/01/23.
//

import UIKit

class studentDetailsVC: UIViewController {
    
    @IBOutlet weak var stdDetailsImg: UIImageView!
    @IBOutlet weak var stdDetailsLbl1: UILabel!
    @IBOutlet weak var stdDetailsLbl2: UILabel!
    @IBOutlet weak var stdDetailsLbl3: UILabel!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var segOut1: UISegmentedControl!
    @IBOutlet weak var studentResultTbl: UITableView!
    
    
    var arrstudentResult = [studentResult]()
    var studentOBJ : studentList?
    
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0{
            
            
        }
        else if sender.selectedSegmentIndex == 1{
            
            print("Second")

        }
        else if sender.selectedSegmentIndex == 2{
            
        }
        else if sender.selectedSegmentIndex == 3{
            
        }
        
            
    }
    
    var arrsem2 = [studentResult]()

    lazy var arrToDisplay = arrstudentResult
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentResultTbl.delegate = self
        studentResultTbl.dataSource = self
        self.setStudentDetails()
        self.loadXIB()
        self.setDummyResult()
        
        
    }
    
    
    @IBAction func BackButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    func setStudentDetails() {
        self.stdDetailsImg.layer.cornerRadius = 10
        if studentOBJ != nil {
            self.stdDetailsImg.image = UIImage(named: studentOBJ!.studentImage!)
            stdDetailsLbl1?.text = studentOBJ!.studentName!
            stdDetailsLbl2?.text = studentOBJ!.studentDepartment!
            stdDetailsLbl3?.text = studentOBJ!.studentSemester!
            
        }
        
    }
    
    func loadXIB() {
        studentResultTbl.register(UINib(nibName: "stdDetailsList", bundle: nil), forCellReuseIdentifier: "stdDetailsList")
        studentResultTbl.register(UINib(nibName: "stdHeaderView", bundle: nil), forCellReuseIdentifier: "stdHeaderView")
        studentResultTbl.register(UINib(nibName: "stdFooterView", bundle: nil), forCellReuseIdentifier: "stdFooterView")
        
    }
    
   
    func setDummyResult(){
        
        let result = studentResult.init(subjectName: "Maths" , subjectMarks: "92")
        let result1 = studentResult.init(subjectName: "C++" , subjectMarks: "90")
        let result2 = studentResult.init(subjectName: "php" , subjectMarks: "85")
        let result3 = studentResult.init(subjectName: "Python" , subjectMarks: "92")
        
        let result4 = studentResult.init(subjectName: "c" , subjectMarks: "92")
        let result5 = studentResult.init(subjectName: "WDT" , subjectMarks: "89")
        let result6 = studentResult.init(subjectName: "Php" , subjectMarks: "87")


        
        self.arrstudentResult.append(result)
        self.arrstudentResult.append(result1)
        self.arrstudentResult.append(result2)
        self.arrstudentResult.append(result3)
        self.arrsem2.append(result4)
        self.arrsem2.append(result5)
        self.arrsem2.append(result6)

        
        self.studentResultTbl.reloadData()
    }
    
    @IBAction func segOut(_ sender: UISegmentedControl) {
    
    }
}

extension studentDetailsVC: UITableViewDelegate , UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return self.arrstudentResult.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stdDetailsList", for: indexPath) as! stdDetailsList
        cell.setData(result: self.arrstudentResult[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerview = tableView.dequeueReusableCell(withIdentifier: "stdHeaderView") as! stdHeaderView
        return headerview
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerview = tableView.dequeueReusableCell(withIdentifier: "stdFooterView") as! stdFooterView
        return footerview
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
    
}


