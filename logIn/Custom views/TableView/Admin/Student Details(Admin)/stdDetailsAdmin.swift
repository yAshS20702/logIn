//
//  stdDetailsAdmin.swift
//  logIn
//
//  Created by Thinkwik 27 on 24/01/23.
//

import UIKit

class stdDetailsAdmin: UITableViewCell {
    @IBOutlet weak var imgStdImage: UIImageView!{
        didSet {
            self.imgStdImage.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var txtStdFname: UILabel!
    @IBOutlet weak var txtStdDept: UILabel!
    @IBOutlet weak var txtSem: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    
    func setAdminStdData(std: stdListAdmin) {
        self.imgStdImage.image = UIImage(named: std.studentImageAdmin!)
        self.txtStdFname.text = std.studentFName!
        self.txtSem.text = std.studentSem!
        self.txtStdDept.text = std.studentDeptAdmin!
    }
    
    
}
