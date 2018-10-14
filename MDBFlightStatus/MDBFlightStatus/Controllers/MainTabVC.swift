//
//  ViewController.swift
//  MDBFlightStatus
//
//  Created by Isabella Lau on 10/8/18.
//  Copyright © 2018 Isabella Lau. All rights reserved.
//

import UIKit

class MainTabVC: UITabBarController {

    var navigation : UINavigationItem!
    
    var datePicker : UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        setupDatePicker()
    }
    
    func setupTabBar() {
        navigation = navigationItem
    
        let tab1 = FlightVC()
        let image1 = UIImage(named: "pass")
        tab1.tabBarItem = UITabBarItem(title: "Feed", image: image1, tag: 0)
    
        let tab2 = AirportVC()
        let image2 = UIImage(named: "flight")
        tab2.tabBarItem = UITabBarItem(title: "My Events", image: image2, tag: 1)
    
        let tab3 = FavoritesVC()
        let image3 = UIImage(named: "star")
        tab3.tabBarItem = UITabBarItem(title: "Favorites", image: image3, tag: 1)
    
        self.viewControllers = [tab1, tab2, tab3]
        // Do any additional setup after loading the view.
    }
    
    func setupDatePicker() {
        datePicker = UIDatePicker(frame: CGRect(x: 30, y: 3 * view.frame.height / 16, width:  view.frame.width - 60, height: view.frame.height / 8))
        view.addSubview(datePicker)
    }

}

