//
//  assignmentTVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 08/02/23.
//

import UIKit

class assignmentTVC: UITableViewCell {
    @IBOutlet weak var lblAssignTitle: UILabel!
    
    @IBOutlet weak var lblAssignDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    func setAssignData(assign : assignmentCheck)
    {
        self.lblAssignTitle.text = assign.assignTitle
        self.lblAssignDate.text = assign.assignDate
    }
}
