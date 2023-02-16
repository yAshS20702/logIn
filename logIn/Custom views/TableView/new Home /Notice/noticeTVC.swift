//
//  noticeTVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 13/02/23.
//

import UIKit

class noticeTVC: UITableViewCell {

    @IBOutlet weak var imgNotice: UIImageView!
    @IBOutlet weak var lblNotice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
   func setnoticeData(notice : noticeCheck)
    {
        lblNotice.text = notice.noticeTitle!
        imgNotice.image = UIImage(named: notice.noticeimage!)
    }
    
}
