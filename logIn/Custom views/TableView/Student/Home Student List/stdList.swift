//
//  stdList.swift
//  logIn
//
//  Created by Thinkwik 27 on 10/01/23.
//

import UIKit

class stdList: UITableViewCell {

    @IBOutlet weak var tblDeptname: UILabel!
    @IBOutlet weak var tblName: UILabel!
    @IBOutlet weak var tblSem: UILabel!
    @IBOutlet weak var tblImg: UIImageView! {
        didSet {
            self.tblImg.layer.cornerRadius = 10
        }
    }
   
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setData(student: studentList) {
        self.tblImg.image = UIImage(named: student.studentImage!)
        self.tblName.text = student.studentName!
        self.tblDeptname.text = student.studentDepartment!
        self.tblSem.text = student.studentSemester!
    }
}
