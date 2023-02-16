//
//  sidemenuVC.swift
//  logIn
//
//  Created by Thinkwik 27 on 15/02/23.
//

import SideMenu
import UIKit

class sidemenuVC: UIViewController {
    
    var menu : SideMenuNavigationController?

    override func viewDidLoad() {
        super.viewDidLoad()
        menu = SideMenuNavigationController(rootViewController: menuList    ())
        
        menu?.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
//        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.view)
//
        


    }
    
    @IBAction func didTapped()
    {
        present(menu!, animated: true)
    }
}

class menuList: UITableViewController {
    
    var items = ["Home","Back"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = ColorConstants.Color_Grey
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = ColorConstants.Color_White
        cell.backgroundColor = ColorConstants.Color_Grey
        return cell
    }
    
}
