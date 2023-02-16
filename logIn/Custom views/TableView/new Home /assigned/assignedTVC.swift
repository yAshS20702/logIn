//
//  assignedTVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 10/02/23.
//

import UIKit

class assignedTVC: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var btnUpload: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }    
    func setAData(assign : assignmentAssigned)
    {
        self.lblTitle.text = assign.aTitle
        self.lblDate.text = assign.aDate
    }
    
}
