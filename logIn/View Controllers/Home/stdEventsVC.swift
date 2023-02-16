//
//  stdEventsVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 01/02/23.
//

import UIKit
class stdEventsVC: UIViewController {

    @IBOutlet weak var txtEventTitle: UITextField!
    @IBOutlet weak var txtEventDate: UITextField!
    @IBOutlet weak var txtEventFromTime: UITextField!
    @IBOutlet weak var txtEventToTime: UITextField!
    @IBOutlet weak var txtEventLocation: UITextField!
    @IBOutlet weak var txtEventDescription: UITextView!
    @IBOutlet weak var btnEventDone: UIButton!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stdEventUI()

    }
    @IBAction func btnbackEventAdd(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func stdEventUI(){
        
        self.txtEventTitle.layer.cornerRadius = 10
        self.txtEventTitle.layer.borderWidth = 1
        self.txtEventTitle.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtEventTitle.setLeftPaddingPoints(10)
        self.txtEventTitle.placeholder = "Title of an Event..."
        self.txtEventTitle.placeholderColors = ColorConstants.Color_light_Grey
        
        self.txtEventDate.layer.cornerRadius = 10
        self.txtEventDate.layer.borderWidth = 1
        self.txtEventDate.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtEventDate.setLeftPaddingPoints(10)
        self.txtEventDate.placeholder = "eg: 01/02/2023"
        self.txtEventDate.placeholderColors = ColorConstants.Color_light_Grey
        
        self.txtEventFromTime.layer.cornerRadius = 10
        self.txtEventFromTime.layer.borderWidth = 1
        self.txtEventFromTime.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtEventFromTime.setLeftPaddingPoints(10)
        self.txtEventFromTime.placeholder = "eg: 12:00 PM"
        self.txtEventFromTime.placeholderColors = ColorConstants.Color_light_Grey
        
        self.txtEventToTime.layer.cornerRadius = 10
        self.txtEventToTime.layer.borderWidth = 1
        self.txtEventToTime.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtEventToTime.setLeftPaddingPoints(10)
        self.txtEventToTime.placeholder = "eg: 6:00 PM"
        self.txtEventToTime.placeholderColors = ColorConstants.Color_light_Grey
        
        self.txtEventLocation.layer.cornerRadius = 10
        self.txtEventLocation.layer.borderWidth = 1
        self.txtEventLocation.layer.borderColor = ColorConstants.color_black.cgColor
        self.txtEventLocation.setLeftPaddingPoints(10)
        self.txtEventLocation.placeholder = "Add Loaction..."
        self.txtEventLocation.placeholderColors = ColorConstants.Color_light_Grey
        
        self.txtEventDescription.layer.cornerRadius = 10
        self.txtEventDescription.layer.borderWidth = 1
        self.txtEventDescription.layer.borderColor = ColorConstants.color_black.cgColor
//        self.txtEventDescription.setLeftPaddingPoints(10)
//        self.txtEventDescription.placeholder = "Tell us about Event..."
//        self.txtEventDescription.placeholderColors = ColorConstants.color_black
       
        self.btnEventDone.layer.cornerRadius = 20
        
        
    }
    
    
    func isVaildData() -> Bool {
        if self.txtEventTitle.text!.isEmpty == true {
            
            self.setAlertMessage(titleMSG:"ALERT", message: "Event title is Compulsory")
            return false
        }
        
        if self.txtEventDate.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Need to Enter Date")
            
        }
        if self.txtEventFromTime.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Enter Event's From Time")
            
        }
        if self.txtEventToTime.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Enter Event's To Time")
            
        }
        if self.txtEventLocation.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Enter Event's Location")
            
        }
        if self.txtEventDescription.text!.isEmpty == true {
            self.setAlertMessage(titleMSG:"ALERT", message: "Need to enter Description")
            
        }
        
        return true
    }
    
    @IBAction func btnEventTapped(_ sender: Any) {
            
        if isVaildData(){
            self.showToast(message: "Request Sent :)", font: .systemFont(ofSize: 12))
            
        }
        
    }
    
  

}
