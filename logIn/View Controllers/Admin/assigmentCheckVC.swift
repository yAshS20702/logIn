//
//  assigmentCheckVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 08/02/23.
//

import UIKit

class assigmentCheckVC: UIViewController {
    @IBOutlet weak var tblAssign: UITableView!
    
    var arrAssignList = [assignmentCheck]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblAssign.delegate = self
        tblAssign.dataSource = self
        self.loadXIB()
        self.setAssignments()
    }
    
    func loadXIB()
    {
        tblAssign.register(UINib(nibName: "assignmentTVC", bundle: nil), forCellReuseIdentifier: "assignmentTVC")
    }
    
    func setAssignments()
    {
        let assign = assignmentCheck.init(assignTitle: "c++ lec : 15" , assignDate: "02/02/2023")
        let assign1 = assignmentCheck.init(assignTitle: "Python" , assignDate: "05/02/2023")
        let assign2 = assignmentCheck.init(assignTitle: "Java lec 20" , assignDate: "10/02/2023")
        let assign3 = assignmentCheck.init(assignTitle: "Swift lec 18" , assignDate: "1/03/2023")
        let assign4 = assignmentCheck.init(assignTitle: "Os lec 19" , assignDate: "21/02/2023")

        
        self.arrAssignList.append(assign)
        self.arrAssignList.append(assign1)
        self.arrAssignList.append(assign2)
        self.arrAssignList.append(assign3)
        self.arrAssignList.append(assign4)


    }
   
    
    @IBAction func btnAddAssign(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "assignmentUploadVC") as? assignmentUploadVC
            
            
        {
            if let sheet = vc.sheetPresentationController{
                
                sheet.detents = [.medium() , .large()]
                
            }
            self.present(vc, animated: true)
        }
    }
    
    @IBAction func btnbackAssignmentCheck(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}

extension assigmentCheckVC : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrAssignList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "assignmentTVC") as! assignmentTVC
        cell.setAssignData(assign: arrAssignList[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
}
