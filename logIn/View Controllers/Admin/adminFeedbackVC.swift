//
//  adminFeedbackVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 02/02/23.
//

import UIKit


class adminFeedbackVC: UIViewController {
    
    var arrfeedbackList  = [feedback]()
    
    @IBOutlet weak var tblFeedback: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNewData()
        loadXIB()
        tblFeedback.delegate = self
        tblFeedback.dataSource = self
    }
    
    func loadXIB(){
        self.tblFeedback.register(UINib(nibName: "feedbackCheckTVC", bundle: nil), forCellReuseIdentifier: "feedbackCheckTVC")
    }
    func setNewData(){
        
        let feed = feedback.init(title: "231321321321231231231313212312132132132132123123132123121313212313213213213113123123121312321321312313132132132132132123132132132131")
        let feed1 = feedback.init(title: "31361651516156151616131161525847695294796852564564654644646546545646464464654654654654654654654654654654564654654654654")
        let feed2 = feedback.init(title: "31361651516156151616131161525847695294796852564564654644646546545646464464654654654654654654654654654654564654654654654")
        let feed3 = feedback.init(title: "456465489494798798798798798798798799797979797979879879879794654613114846464")
        let feed4 = feedback.init(title: "231321321321231231231313212312132132132132123123132123121313212313213213213113123123121312321321312313132132132132132123132132132131")
        
        self.arrfeedbackList.append(feed)
        self.arrfeedbackList.append(feed1)
        self.arrfeedbackList.append(feed2)
        self.arrfeedbackList.append(feed3)
        self.arrfeedbackList.append(feed4)
        
        
    }
    
    @IBAction func btnbackfeedback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension adminFeedbackVC : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrfeedbackList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "feedbackCheckTVC") as! feedbackCheckTVC
        cell.setNewDATA(feed: arrfeedbackList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            tblFeedback.beginUpdates()
            arrfeedbackList.remove(at: indexPath.row)
            tblFeedback.deleteRows(at: [indexPath], with:.fade)
            tblFeedback.endUpdates()
        }
    }
    
    
    
    
}
