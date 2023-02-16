//
//  newRegistrationVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 13/02/23.
//

import UIKit

class newRegistrationVC: UIViewController {

    @IBOutlet weak var btnHide: UIButton!
    @IBOutlet weak var btnShow: UIButton!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var btnReset: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnHideClicked(_ sender: Any)
    {
        
        self.secondView.isHidden = true
        self.firstView.isHidden = false
    
    }
    
    @IBAction func btnShowClicked(_ sender: Any)
    {
        self.firstView.isHidden = true
        self.secondView.isHidden = false
    }
    @IBAction func btnResetClicked(_ sender: Any)
    {
        self.firstView.isHidden = false
        self.secondView.isHidden = false
    }

}
