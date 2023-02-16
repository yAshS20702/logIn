//
//  queCheckTVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 01/02/23.
//

import UIKit

class queCheckTVC: UITableViewCell {
    @IBOutlet weak var lblQue: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setQueData(std: faqCheck)
    {
        self.lblQue.text = std.que
    }
}
