//
//  showAllCell.swift
//  logIn
//
//  Created by Thinkwik 27 on 13/02/23.
//

import UIKit

class showAllCell: UITableViewCell {

    @IBOutlet weak var imgShowAll: UIImageView!
    @IBOutlet weak var lblShowAllTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setShowAllData(showAll : showAllCheck)
    {
        lblShowAllTitle.text = showAll.noticeTitle!
        imgShowAll.image = UIImage(named: showAll.noticeImage!)
    }
    
}
