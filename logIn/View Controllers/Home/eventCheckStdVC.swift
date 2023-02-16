//
//  eventCheckStdVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 07/02/23.
//

import UIKit



class eventCheckStdVC: UIViewController {
    @IBOutlet weak var tblEvent: UITableView!
    @IBOutlet weak var btnaddEvents: UIButton!
    @IBOutlet weak var lblPastEvent : UILabel!
    @IBOutlet weak var collectionEvents: UICollectionView!
    @IBOutlet weak var hidecollection : UIButton!
    
    var arrimg = [UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") ,UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") ,UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") ,UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") ,UIImage(named: "yash_pic")]
    
    var arreventList = [eventCheck]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblEvent.dataSource = self
        tblEvent.delegate = self
        self.loadXIB()
        self.setEventdata()
        collectionEvents.delegate = self
        collectionEvents.dataSource = self

    }
    @IBAction func btnBackEvents(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnEventTapped(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "stdEventsVC") as? stdEventsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
   
    
    func loadXIB(){
        tblEvent.register(UINib(nibName: "eventCheckTVC", bundle: nil), forCellReuseIdentifier: "eventCheckTVC")
        
    }
    @IBAction func hideCollection(_ sender: Any)
    {
        if hidecollection.currentTitle == "Hide"
        {
            collectionEvents.isHidden = true
            lblPastEvent.text = "Upcoming Events"
            hidecollection.setTitle("Show", for: .normal)
        }
        else if  hidecollection.currentTitle == "Show"
        {
            hidecollection.isHidden = false
            collectionEvents.isHidden = false
            lblPastEvent.text = "Past Events"
            hidecollection.setTitle("Hide", for: .normal)

            
        }
        
        
            
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

extension eventCheckStdVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreventList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCheckTVC") as! eventCheckTVC
        cell.setEventData(std: arreventList[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
  
    
    
}

extension eventCheckStdVC : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return arrimg.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = (collectionView.frame.size.width - 10 )/1
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: newCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! newCell
        cell.newimg.image = arrimg[indexPath.row]
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 0
        cell.layer.borderColor = UIColor.black.cgColor
        
        
        return cell
    }
    
}

