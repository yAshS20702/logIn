//
//  faqQueVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 30/01/23.
//

import UIKit

class faqQueVC: UIViewController {
    @IBOutlet weak var txtAskQue: UITextField!
    @IBOutlet weak var btnaskQue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.txtAskQue.layer.borderWidth = 1
        self.txtAskQue.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAskQue.layer.cornerRadius = 10
        self.txtAskQue.placeholder = "Type Question Here..."
        self.txtAskQue.placeholderColors = ColorConstants.Color_light_Grey
        self.txtAskQue.setLeftPaddingPoints(10)
        
        self.btnaskQue.layer.cornerRadius = 10
        
    }

}

