//
//  attQueryVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 08/02/23.
//

import UIKit

class attQueryVC: UIViewController {
    @IBOutlet weak var txtAttTV: UITextView!
    @IBOutlet weak var btnAttSend: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.attUI()

    }
    func attUI()
    {
        self.txtAttTV.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAttTV.layer.borderWidth = 1
        self.txtAttTV.layer.cornerRadius = 10
        
        self.btnAttSend.layer.borderColor = ColorConstants.color_black.cgColor
        self.btnAttSend.layer.borderWidth = 1
        self.btnAttSend.layer.cornerRadius = 20
        
        
    }
    
    @IBAction func btnSendQuery(_ sender: Any) {
        showToast(message: "Send :)", font: .systemFont(ofSize: 12))
    }
    
   
    


}
