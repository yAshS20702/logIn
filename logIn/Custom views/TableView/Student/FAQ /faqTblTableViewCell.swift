//
//  faqTblTableViewCell.swift
//  logIn
//
//  Created by Thinkwik 27 on 30/01/23.
//

import UIKit

class faqTblTableViewCell: UITableViewCell {
    @IBOutlet weak var lblfaqQue: UILabel!
    @IBOutlet weak var lblfaqAns: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData2(qa: FaQ) {
       
        self.lblfaqQue.text = qa.stdQue!
        self.lblfaqAns.text = qa.stdAns!
        
            
}
    
}
