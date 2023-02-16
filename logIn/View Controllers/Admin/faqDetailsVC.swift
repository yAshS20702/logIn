//
//  faqDetailsVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 01/02/23.
//

import UIKit

class faqDetailsVC: UIViewController {
    @IBOutlet weak var txtAns: UITextView!
    @IBOutlet weak var btnAns: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        faqDetailsUI()
    }
    
    func faqDetailsUI()
    {
        self.txtAns.layer.cornerRadius = 10
        self.txtAns.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAns.layer.borderWidth = 1
    }
    @IBAction func btnAnsTapped(_ sender: Any) {
        self.showToast(message: "Done :)", font: .systemFont(ofSize: 12))
    }
    

}


