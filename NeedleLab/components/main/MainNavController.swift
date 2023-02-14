//
//  MainNavController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import UIKit


final class MainNavController: UITabBarController {
    
    private let homeNavBuilder: HomeNavBuilder
    private let settingNavBuilder: SettingNavBuilder
    
    init(homeNavBuilder: HomeNavBuilder, settingNavBuilder: SettingNavBuilder) {
        self.homeNavBuilder = homeNavBuilder
        self.settingNavBuilder = settingNavBuilder
        
        let home = homeNavBuilder.homeNavController
        home.tabBarItem = .init(tabBarSystemItem: .bookmarks, tag: 0)
        let setting = settingNavBuilder.settingNavController
        setting.tabBarItem = .init(tabBarSystemItem: .featured, tag: 1)
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = [home, setting]
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
