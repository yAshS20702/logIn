//
//  stdNotifications.swift
//  logIn
//
//  Created by Thinkwik 27 on 12/01/23.
//

import UIKit

class stdNotifications: UITableViewCell {
    
    @IBOutlet weak var lblBriefInfo: UILabel!
    @IBOutlet weak var imgStdNotification: UIImageView!
    @IBOutlet weak var lblStdNotification: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
        
        func setData1(student: studentNotification) {
            self.imgStdNotification.image = UIImage(named: student.studentNotificationImage!)
            self.lblStdNotification.text = student.studentNotificationTitle!
            self.lblBriefInfo.text = student.studentNotificationBrief!
            
                
    }
}
