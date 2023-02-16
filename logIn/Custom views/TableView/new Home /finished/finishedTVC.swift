//
//  finishedTVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 10/02/23.
//

import UIKit

class finishedTVC: UITableViewCell {

    @IBOutlet weak var assignDTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setDummyDoneData(assignD : assignmentDone)
    {
        assignDTitle.text = assignD.aDoneTitle
    }
    
}
