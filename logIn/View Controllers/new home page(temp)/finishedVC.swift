//
//  finishedVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 10/02/23.
//

import UIKit

class finishedVC: UIViewController {

    @IBOutlet weak var tblFinished: UITableView!
    var arrfinishedWork = [assignmentDone]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadXIB()
        self.setDoneData()
        tblFinished.delegate = self
        tblFinished.dataSource = self

    }
    
    func loadXIB()
    {
        tblFinished.register(UINib(nibName: "finishedTVC", bundle: nil), forCellReuseIdentifier: "finishedTVC")
    }
   
    
    func setDoneData()
    {
        let assignD = assignmentDone.init(aDoneTitle: "A")
        let assignD1 = assignmentDone.init(aDoneTitle: "B")
        let assignD2 = assignmentDone.init(aDoneTitle: "C")
        let assignD3 = assignmentDone.init(aDoneTitle: "D")
        let assignD4 = assignmentDone.init(aDoneTitle: "E")
        let assignD5 = assignmentDone.init(aDoneTitle: "F")
        let assignD6 = assignmentDone.init(aDoneTitle: "G")
        let assignD7 = assignmentDone.init(aDoneTitle: "H")
        let assignD8 = assignmentDone.init(aDoneTitle: "I")
        let assignD9 = assignmentDone.init(aDoneTitle: "J")
        
        self.arrfinishedWork.append(assignD)
        self.arrfinishedWork.append(assignD1)
        self.arrfinishedWork.append(assignD2)
        self.arrfinishedWork.append(assignD3)
        self.arrfinishedWork.append(assignD4)
        self.arrfinishedWork.append(assignD5)
        self.arrfinishedWork.append(assignD6)
        self.arrfinishedWork.append(assignD7)
        self.arrfinishedWork.append(assignD8)
        self.arrfinishedWork.append(assignD9)

        
    }
    
    



}

extension finishedVC : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrfinishedWork.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "finishedTVC") as! finishedTVC
        cell.setDummyDoneData(assignD: arrfinishedWork[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }
    
    
}
