//
//  splashScreenVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 09/01/23.
//

import UIKit

class splashScreenVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2)
        {
            self.performSegue(withIdentifier: "OpenSMenu", sender: nil)
        }
        
        
    }
}
