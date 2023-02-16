//
//  assignedVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 10/02/23.
//

import UIKit

class assignedVC: UIViewController {
var arrassigned = [assignmentAssigned]()
    
    @IBOutlet weak var tblAssigned: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadXIB()
        self.setdummyAssignment()
        tblAssigned.delegate = self
        tblAssigned.dataSource = self

    }
    
    func loadXIB()
    {
        tblAssigned.register(UINib(nibName: "assignedTVC", bundle: nil), forCellReuseIdentifier: "assignedTVC")
    }
    func setdummyAssignment()
    {
        let assign = assignmentAssigned.init(aTitle: "A" , aDate: "1")
        let assign1 = assignmentAssigned.init(aTitle: "B" , aDate: "2")
        let assign2 = assignmentAssigned.init(aTitle: "C" , aDate: "3")
        let assign3 = assignmentAssigned.init(aTitle: "D" , aDate: "4")
        let assign4 = assignmentAssigned.init(aTitle: "E" , aDate: "5")
        let assign5 = assignmentAssigned.init(aTitle: "F" , aDate: "6")
        let assign6 = assignmentAssigned.init(aTitle: "G" , aDate: "7")
        let assign7 = assignmentAssigned.init(aTitle: "H" , aDate: "8")
        let assign8 = assignmentAssigned.init(aTitle: "I" , aDate: "9")
        let assign9 = assignmentAssigned.init(aTitle: "J" , aDate: "10")
        
        self.arrassigned.append(assign)
        self.arrassigned.append(assign1)
        self.arrassigned.append(assign2)
        self.arrassigned.append(assign3)
        self.arrassigned.append(assign4)
        self.arrassigned.append(assign5)
        self.arrassigned.append(assign6)
        self.arrassigned.append(assign7)
        self.arrassigned.append(assign8)
        self.arrassigned.append(assign9)

        
    }
    @IBAction func btnBackWorkDone(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnPlusTapped(_ sender: Any) {
        tblAssigned.isHidden = false
    }
    
    @IBAction func btnMinusTapped(_ sender: Any) {
        tblAssigned.isHidden = true
    }
    


}

extension assignedVC : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrassigned.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "assignedTVC")as! assignedTVC
        cell.setAData(assign: arrassigned[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc  = storyboard?.instantiateViewController(withIdentifier: "workUploadVC")as? workUploadVC
        {
            if  let sheet = vc.sheetPresentationController{
                
                sheet.detents = [.medium() , .large()]
            }
            
            
            self.present(vc, animated: true ,completion: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
}
