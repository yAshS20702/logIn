//
//  workUploadVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 10/02/23.
//

import UIKit

class workUploadVC: UIViewController {

    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnAssign: UIButton!
    @IBOutlet weak var lblLink: UILabel!
    
    var assignOBJ : assignmentAssigned?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setAssignment()
        self.assignUI()
       
        
        
    }
    
   
    
    

    func setAssignment()
    {
        if assignOBJ != nil{
            lblTitle?.text = assignOBJ!.aTitle!
            lblDate?.text = assignOBJ!.aDate!
        }
    }
    
    func assignUI()
    {
        self.btnAssign.layer.cornerRadius = 10
        self.btnAssign.layer.borderWidth = 1
        self.btnAssign.layer.borderColor = ColorConstants.color_black.cgColor
    }
    
    

   

}
