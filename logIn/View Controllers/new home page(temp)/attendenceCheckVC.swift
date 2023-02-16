//
//  attendenceCheckVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 08/02/23.
//

import UIKit

class attendenceCheckVC: UIViewController {
    @IBOutlet weak var tblAttendance: UITableView!
    
    var arrAttendance = [attendanceCheck]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblAttendance.dataSource = self
        tblAttendance.delegate = self
        self.loadXIB()
        self.setTempAttendance()
        
    }
    @IBAction func btnbackAttendanceCheck(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func setTempAttendance()
    {
        let att = attendanceCheck.init(subject: "C++" ,lecDone: "10", lecAttend: "9")
        let att1 = attendanceCheck.init(subject: "Java" ,lecDone: "10", lecAttend: "9" )
        let att2 = attendanceCheck.init(subject: "Python" ,lecDone: "10", lecAttend: "9" )
        let att3 = attendanceCheck.init(subject: "Php" ,lecDone: "10", lecAttend: "9" )
        let att4 = attendanceCheck.init(subject: "OS" ,lecDone: "10", lecAttend: "9" )
        
        self.arrAttendance.append(att)
        self.arrAttendance.append(att1)
        self.arrAttendance.append(att2)
        self.arrAttendance.append(att3)
        self.arrAttendance.append(att4)

        
    }
    
    
    @IBAction func btnQuery(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "attQueryVC") as? attQueryVC
        {
            if let sheet = vc.sheetPresentationController{
                
                sheet.detents = [.medium()]
                
            }
            self.present(vc, animated: true)
        }
    }
    

    func loadXIB()
    {
        tblAttendance.register(UINib(nibName: "attendanceCheckTVC", bundle: nil), forCellReuseIdentifier: "attendanceCheckTVC")
        tblAttendance.register(UINib(nibName: "attHeader", bundle: nil), forCellReuseIdentifier: "attHeader")
        tblAttendance.register(UINib(nibName: "attFooter", bundle: nil), forCellReuseIdentifier: "attFooter")
    }
    
    
    
}

extension attendenceCheckVC : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrAttendance.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "attendanceCheckTVC") as! attendanceCheckTVC
        cell.setAttendanceData(att: arrAttendance[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerview = tableView.dequeueReusableCell(withIdentifier: "attHeader") as! attHeader
        return headerview
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerview = tableView.dequeueReusableCell(withIdentifier: "attFooter") as! attFooter
        return footerview
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 70
    }
    
    
}
