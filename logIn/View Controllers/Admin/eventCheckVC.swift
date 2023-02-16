//
//  eventCheckVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 01/02/23.
//

import UIKit

class eventCheckVC: UIViewController {
    @IBOutlet weak var tblEvent: UITableView!
    @IBOutlet weak var btnbackevent: UIButton!
    
    var arreventList = [eventCheck]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblEvent.dataSource = self
        tblEvent.delegate = self
        self.loadXIB()
        self.setEventdata()
    }
    

    @IBAction func btnbackEventTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func loadXIB(){
        tblEvent.register(UINib(nibName: "eventCheckTVC", bundle: nil), forCellReuseIdentifier: "eventCheckTVC")
        
    }
    func setEventdata()
    {
        let event = eventCheck.init(eventTitle: "Freshers party " , eventDate: "12/2/2023")
        let event1 = eventCheck.init(eventTitle: "Sports Event" , eventDate: "21/1/2023")
        let event2 = eventCheck.init(eventTitle: "Hackathon" , eventDate: "10/2/2023")
        let event3 = eventCheck.init(eventTitle: "Tech Festival" , eventDate: "4/2/2023")
        let event4 = eventCheck.init(eventTitle: "Days Celebration" , eventDate: "22/1/2023")
        let event5 = eventCheck.init(eventTitle: "" , eventDate: "")
        let event6 = eventCheck.init(eventTitle: "" , eventDate: "")
        let event7 = eventCheck.init(eventTitle: "" , eventDate: "")
        let event8 = eventCheck.init(eventTitle: "" , eventDate: "")
        let event9 = eventCheck.init(eventTitle: "" , eventDate: "")
        
        self.arreventList.append(event)
        self.arreventList.append(event1)
        self.arreventList.append(event2)
        self.arreventList.append(event3)
        self.arreventList.append(event4)
        self.arreventList.append(event5)
        self.arreventList.append(event6)
        self.arreventList.append(event7)
        self.arreventList.append(event8)
        self.arreventList.append(event9)
    }
    

}

extension eventCheckVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreventList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCheckTVC") as! eventCheckTVC
        cell.setEventData(std: arreventList[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc  = storyboard?.instantiateViewController(withIdentifier: "eventDetailsVC")as? eventDetailsVC
        {
            if  let sheet = vc.sheetPresentationController{
                
                sheet.detents = [.medium() , .large()]
            }
            
            
            self.present(vc, animated: true ,completion: nil)
        }
        
        
    
    }
    
    
}
