//
//  newHomeController.swift
//  logIn
//
//  Created by Thinkwik 27 on 07/02/23.
//

import UIKit




var arrimg = [UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") ,UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") ,UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") ,UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") ,UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") ,UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") , UIImage(named: "key") , UIImage(named: "notify"),UIImage(named: "yash_pic") , UIImage(named: "boy") , UIImage(named: "man") , UIImage(named: "key") , UIImage(named: "notify")]

class newHomeController: UIViewController {
    
    
    var arrNoticeList = [noticeCheck]()
    @IBOutlet weak var viewS1: UIView!
    @IBOutlet weak var viewS2: UIView!
    @IBOutlet weak var viewS3: UIView!
    @IBOutlet weak var viewS4: UIView!
    @IBOutlet weak var viewCenter: UIView!
    @IBOutlet weak var viewC1: UIButton!
    @IBOutlet weak var viewC2: UIButton!
    
    
    @IBOutlet weak var homeCollection: UICollectionView!
    @IBOutlet weak var btnAttendance: UIButton!
    @IBOutlet weak var btnEvents: UIButton!
    @IBOutlet weak var btnResult: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        homeCollection.dataSource = self
        //        homeCollection.delegate = self
        homeUI()
        self.navigationController?.isNavigationBarHidden = true
        
        
        
    
    }
    
    @IBAction func btnSub1Tapped(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "NewTabBar") as? NewTabBar
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    @IBAction func btnSub2Tapped(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "NewTabBar") as? NewTabBar
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    @IBAction func btnSub3Tapped(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "NewTabBar") as? NewTabBar
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    @IBAction func btnSub4Tapped(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "NewTabBar") as? NewTabBar
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    
    
    func homeUI()
    {
        
        self.viewS1.layer.cornerRadius = 10
        self.viewS1.dropShadow(scale: true)
        
        self.viewS2.layer.cornerRadius = 10
        self.viewS2.dropShadow(scale: true)

        self.viewS3.layer.cornerRadius = 10
        self.viewS3.dropShadow(scale: true)

        self.viewS4.layer.cornerRadius = 10
        self.viewS4.dropShadow(scale: true)

        self.viewCenter.layer.cornerRadius = 10
        self.viewCenter.dropShadow(scale: true)

        self.btnEvents.layer.cornerRadius = 10
        self.btnEvents.dropShadow(scale: true)
        self.btnEvents.applyGradient(isVertical: false, colorArray: [UIColor.purple , UIColor.clear])

        

        self.btnResult.layer.cornerRadius = 10
        self.btnResult.dropShadow(scale: true)
        self.btnResult.applyGradient(isVertical: false, colorArray: [UIColor.clear , UIColor.purple])

        self.btnAttendance.layer.cornerRadius = 10
        self.btnAttendance.dropShadow(scale: true)
        self.btnAttendance.applyGradient(isVertical: false, colorArray: [UIColor.clear , UIColor.purple])
    
    }
    
    @IBAction func btnShowAllNotice(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "showAllVC") as? showAllVC
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
    }
    
    @IBAction func btnFAQTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "faqVC") as? faqVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnAttendanceTapped(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "attendenceCheckVC") as? attendenceCheckVC
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnEventsTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "eventCheckStdVC") as? eventCheckStdVC
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnResultTapped(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "studentDetailsVC") as? studentDetailsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnProfileTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "userDetailsVC") as? userDetailsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}



extension newHomeController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return arrimg.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = (collectionView.frame.size.width - 10 )/1
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: newCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! newCell
        cell.newimg.image = arrimg[indexPath.row]
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 0
        cell.layer.borderColor = UIColor.black.cgColor
        
        
        return cell
    }
    
}

extension UIView {
    
    // OUTPUT 1
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = ColorConstants.color_black.cgColor
        layer.shadowOpacity = 0.1
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowRadius = 0
        
//        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
}


extension UIView {

    func applyGradient(isVertical: Bool, colorArray: [UIColor]) {
        layer.sublayers?.filter({ $0 is CAGradientLayer }).forEach({ $0.removeFromSuperlayer() })

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colorArray.map({ $0.withAlphaComponent(0.80).cgColor })
        if isVertical {
            //top to bottom
            gradientLayer.locations = [0.0, 1.0]
        } else {
            //left to right
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        }

        backgroundColor = .clear
        gradientLayer.frame = self.bounds
        
        gradientLayer.cornerRadius = self.layer.cornerRadius
        layer.insertSublayer(gradientLayer, at: 0)
    }

}
