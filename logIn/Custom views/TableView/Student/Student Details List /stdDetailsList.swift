//
//  stdDetailsList.swift
//  logIn
//
//  Created by Thinkwik 27 on 11/01/23.
//

import UIKit

class stdDetailsList: UITableViewCell {
    @IBOutlet weak var subjectLbl: UILabel!
    @IBOutlet weak var markLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func setData(result: studentResult ){
        self.subjectLbl.text = result.subjectName!
        self.markLbl.text = result.subjectMarks!
    }
}
