//
//  eventCheckTVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 01/02/23.
//

import UIKit

class eventCheckTVC: UITableViewCell {
    @IBOutlet weak var lblEventTitle: UILabel!
    @IBOutlet weak var lblEventDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    func setEventData(std: eventCheck) {
        self.lblEventTitle.text = std.eventTitle!
        self.lblEventDate.text = std.eventDate!
        
    }
}
