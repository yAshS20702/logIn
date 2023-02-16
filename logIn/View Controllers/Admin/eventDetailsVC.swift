//
//  eventDetailsVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 01/02/23.
//

import UIKit

class eventDetailsVC: UIViewController {
    @IBOutlet weak var btnYes: UIButton!
    @IBOutlet weak var btnNO: UIButton!
    @IBOutlet weak var lblEventTitle: UILabel!
    @IBOutlet weak var lblFromTime: UILabel!
    @IBOutlet weak var lblToTime: UILabel!
    @IBOutlet weak var lblEventDate: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.eventDetailsUI()

    }
    
    
    func eventDetailsUI(){
        self.btnYes.layer.cornerRadius = 20
        
        self.btnNO.layer.cornerRadius = 20
        
    }
    @IBAction func btnYesTapped(_ sender: Any) {
        self.showToast(message: "Accepted", font: .systemFont(ofSize: 12))
    }
    
    @IBAction func btnNoTapped(_ sender: Any) {
        self.showToast(message: "Rejected", font: .systemFont(ofSize: 12))
    }
    
}
