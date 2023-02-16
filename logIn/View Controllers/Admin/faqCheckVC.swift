//
//  faqCheckVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 01/02/23.
//

import UIKit

class faqCheckVC: UIViewController {
    
    var arrFAQList = [faqCheck]()
    
    @IBOutlet weak var tblFAQList: UITableView!
    
    @IBOutlet weak var btnfaqCheck: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadXIB()
        self.setTempData()
        tblFAQList.delegate = self
        tblFAQList.dataSource = self
        

    }
    

    @IBAction func btnfaqCheckTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func loadXIB(){
        tblFAQList.register(UINib(nibName: "queCheckTVC", bundle: nil), forCellReuseIdentifier: "queCheckTVC")
    }
    
    func setTempData()
    {
        let que = faqCheck.init(que: "")
        let que1 = faqCheck.init(que: "")
        let que2 = faqCheck.init(que: "")
        let que3 = faqCheck.init(que: "")
        let que4 = faqCheck.init(que: "")
        let que5 = faqCheck.init(que: "")
        let que6 = faqCheck.init(que: "")
        let que7 = faqCheck.init(que: "")
        let que8 = faqCheck.init(que: "")
        let que9 = faqCheck.init(que: "")
        
        self.arrFAQList.append(que)
        self.arrFAQList.append(que1)
        self.arrFAQList.append(que2)
        self.arrFAQList.append(que3)
        self.arrFAQList.append(que4)
        self.arrFAQList.append(que5)
        self.arrFAQList.append(que6)
        self.arrFAQList.append(que7)
        self.arrFAQList.append(que8)
        self.arrFAQList.append(que9)
        
        
    }
}

extension faqCheckVC : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrFAQList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "queCheckTVC") as! queCheckTVC
        cell.setQueData(std: arrFAQList[indexPath.section])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc  = storyboard?.instantiateViewController(withIdentifier: "faqDetailsVC")as? faqDetailsVC
        {
            if  let sheet = vc.sheetPresentationController{
                
                sheet.detents = [.medium()]
            }
            
            
            self.present(vc, animated: true ,completion: nil)
        }
    }
    
    
}
