//
//  attendanceCheckTVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 08/02/23.
//

import UIKit

class attendanceCheckTVC: UITableViewCell {
    
    @IBOutlet weak var lblAttend: UILabel!
    @IBOutlet weak var lblDone: UILabel!
    @IBOutlet weak var lblSubjectName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func setAttendanceData(att: attendanceCheck ){
        self.lblSubjectName.text = att.subject!
        self.lblDone.text = att.lecDone!
        self.lblAttend.text = att.lecAttend!
        
    }
}
