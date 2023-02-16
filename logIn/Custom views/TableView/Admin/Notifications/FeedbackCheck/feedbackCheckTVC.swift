//
//  feedbackCheckTVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 02/02/23.
//

import UIKit

class feedbackCheckTVC: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
    func setNewDATA(feed : feedback)
    {
        self.lblTitle.text = feed.title
    }
    
    
    
}
