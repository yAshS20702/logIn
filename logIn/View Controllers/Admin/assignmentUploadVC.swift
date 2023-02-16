//
//  assignmentUploadVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 08/02/23.
//

import UIKit

class assignmentUploadVC: UIViewController {
    @IBOutlet weak var btnUploadAssign: UIButton!
    @IBOutlet weak var txtAssignComments: UITextView!
    @IBOutlet weak var txtAssignDate: UITextField!
    @IBOutlet weak var btnSaveAssign: UIButton!
    @IBOutlet weak var txtAssignBrief: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignUI()

    }
    
    func assignUI()
    {
        self.btnUploadAssign.layer.borderWidth = 1
        self.btnUploadAssign.layer.borderColor = ColorConstants.color_black.cgColor
        self.btnUploadAssign.layer.cornerRadius = 10

        self.btnSaveAssign.layer.borderWidth = 1
        self.btnSaveAssign.layer.borderColor = ColorConstants.color_black.cgColor
        self.btnSaveAssign.layer.cornerRadius = 10
        
        self.txtAssignComments.layer.borderWidth = 1
        self.txtAssignComments.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAssignComments.layer.cornerRadius = 10
        self.txtAssignDate.setLeftPaddingPoints(10)
        
        self.txtAssignDate.layer.borderWidth = 1
        self.txtAssignDate.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAssignDate.layer.cornerRadius = 10
        self.txtAssignDate.placeholder = "eg. 08/02/2023"
        self.txtAssignDate.placeholderColors = ColorConstants.Color_light_Grey
        self.txtAssignDate.setLeftPaddingPoints(10)
        
        self.txtAssignBrief.layer.borderWidth = 1
        self.txtAssignBrief.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtAssignBrief.layer.cornerRadius = 10
        self.txtAssignBrief.placeholder = "Enter Brief title of Assignment.."
        self.txtAssignBrief.placeholderColors = ColorConstants.Color_light_Grey
        self.txtAssignBrief.setLeftPaddingPoints(10)
        
        
    }
   

}

        
