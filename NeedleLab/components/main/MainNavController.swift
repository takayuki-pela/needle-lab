//
//  MainNavController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import UIKit


final class MainNavController: UITabBarController {
    
    private let homeNavBuilder: HomeNavBuilder
    
    init(homeNavBuilder: HomeNavBuilder) {
        self.homeNavBuilder = homeNavBuilder
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = [homeNavBuilder.homeNavController]
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
