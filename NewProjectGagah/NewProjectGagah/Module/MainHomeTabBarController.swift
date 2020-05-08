//
//  MainHomeTabBarController.swift
//  NewProjectGagah
//
//  Created by Gagah on 08/05/20.
//  Copyright © 2020 Gagah. All rights reserved.
//

import UIKit

class MainHomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        let home = Builder.shared.mainHome()
        let profile = Builder.shared.profile()
        home.tabBarItem = UITabBarItem(title: "Home", image: nil, selectedImage: nil)
        profile.tabBarItem = UITabBarItem(title: "Profile", image: nil, selectedImage: nil)
        
        UITabBar.appearance().barTintColor = .white
        UITabBar.appearance().tintColor = .blue
        
        self.viewControllers = [home,profile]
    }

}
