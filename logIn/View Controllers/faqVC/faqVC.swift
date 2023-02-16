//
//  faqVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 30/01/23.
//

import UIKit

class faqVC: UIViewController {
    
    
    
    var arrFaqList = [FaQ]()
    
    
    @IBOutlet weak var btnAddQueTapped: UIButton!
    @IBOutlet weak var tblFAQ: UITableView!
    @IBOutlet weak var txtFeedback: UITextField!
    @IBOutlet weak var btnFeedback: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.faqUI()
        loadXIB()
        self.tempdata()
    }
    
    func faqUI(){
        
        self.btnAddQueTapped.layer.cornerRadius = 20
        
        self.txtFeedback.layer.borderWidth = 1
        self.txtFeedback.layer.cornerRadius = 10
        self.txtFeedback.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtFeedback.setLeftPaddingPoints(10)
        self.txtFeedback.placeholder = "Let us know your Feedback!"
        self.txtFeedback.placeholderColors = ColorConstants.Color_light_Grey
        
        self.btnFeedback.layer.cornerRadius = 20
        
        
    }
    
    @IBAction func btnBaclFAQStd(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func loadXIB() {
        self.tblFAQ.delegate = self
        self.tblFAQ.dataSource = self
        self.tblFAQ.register(UINib(nibName: "faqTblTableViewCell", bundle: nil), forCellReuseIdentifier: "faqTblTableViewCell")
        
    }
    func tempdata(){
        
        let faq = FaQ.init(stdQue: " " , stdAns: " ")
        let faq1 = FaQ.init(stdQue: "" , stdAns: " ")
        let faq2 = FaQ.init(stdQue: "" , stdAns: " ")
        let faq3 = FaQ.init(stdQue: "" , stdAns: " ")
        let faq4 = FaQ.init(stdQue: "" , stdAns: " ")
        let faq5 = FaQ.init(stdQue: "" , stdAns: " ")
        let faq6 = FaQ.init(stdQue: "" , stdAns: " ")
        let faq7 = FaQ.init(stdQue: "" , stdAns: " ")
        let faq8 = FaQ.init(stdQue: "" , stdAns: " ")
        let faq9 = FaQ.init(stdQue: "" , stdAns: " ")
        
        self.arrFaqList.append(faq)
        self.arrFaqList.append(faq1)
        self.arrFaqList.append(faq2)
        self.arrFaqList.append(faq3)
        self.arrFaqList.append(faq4)
        self.arrFaqList.append(faq5)
        self.arrFaqList.append(faq6)
        self.arrFaqList.append(faq7)
        self.arrFaqList.append(faq8)
        self.arrFaqList.append(faq9)
        
        
    }
    
    @IBAction func btnFeedbackTapped(_ sender: Any) {
        self.showToast(message: "Thank you :)", font: .systemFont(ofSize: 12))
    }
    @IBAction func btnAddQueTapped(_ sender: UIButton) {
        if let vc  = storyboard?.instantiateViewController(withIdentifier: "faqQueVC")as? faqQueVC
        {
            if  let sheet = vc.sheetPresentationController{
                
                sheet.detents = [.medium()]
            }
            
            
            self.present(vc, animated: true ,completion: nil)
        }

    }
}

extension faqVC : UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFaqList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "faqTblTableViewCell" , for: indexPath) as! faqTblTableViewCell
        cell.layoutIfNeeded()
        cell.setData2(qa: self.arrFaqList[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}
