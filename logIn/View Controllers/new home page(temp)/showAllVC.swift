//
//  showAllVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 13/02/23.
//

import UIKit



class showAllVC: UIViewController {

    var arrShowAllList = [showAllCheck]()
    
    @IBOutlet weak var tblShowAll: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadXIB()
        self.setShowAllData()
        tblShowAll.delegate = self
        tblShowAll.dataSource = self

    }
    
    func loadXIB()
    {
        tblShowAll.register(UINib(nibName: "showAllCell", bundle: nil), forCellReuseIdentifier: "showAllCell")
    }
    func setShowAllData()
    {
    
        let notice =   showAllCheck.init(noticeTitle: "Temp__", noticeImage:"notification")
        let notice1 =  showAllCheck.init(noticeTitle: "Temp__", noticeImage:"notification")
        let notice2 =  showAllCheck.init(noticeTitle: "Temp__", noticeImage:"notification")
        let notice3 =  showAllCheck.init(noticeTitle: "Temp__", noticeImage:"notification")
        let notice4 =  showAllCheck.init(noticeTitle: "Temp__", noticeImage:"notification")
        let notice5 =  showAllCheck.init(noticeTitle: "Temp__", noticeImage:"notification")
        let notice6 =  showAllCheck.init(noticeTitle: "Temp__", noticeImage:"notification")
        let notice7 =  showAllCheck.init(noticeTitle: "Temp__", noticeImage:"notification")
        let notice8 =  showAllCheck.init(noticeTitle: "Temp__", noticeImage:"notification")
        let notice9 =  showAllCheck.init(noticeTitle: "Temp__", noticeImage:"notification")
        
        self.arrShowAllList.append(notice)
        self.arrShowAllList.append(notice1)
        self.arrShowAllList.append(notice2)
        self.arrShowAllList.append(notice3)
        self.arrShowAllList.append(notice4)
        self.arrShowAllList.append(notice5)
        self.arrShowAllList.append(notice6)
        self.arrShowAllList.append(notice7)
        self.arrShowAllList.append(notice8)
        self.arrShowAllList.append(notice9)

        
      
    }

    @IBAction func btnBackShowAll(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    

}

extension showAllVC : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrShowAllList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showAllCell") as! showAllCell
        cell.setShowAllData(showAll: arrShowAllList[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            tblShowAll.beginUpdates()
            arrShowAllList.remove(at: indexPath.row)
            tblShowAll.deleteRows(at: [indexPath], with:.fade)
            tblShowAll.endUpdates()
        }
    }
    
}
