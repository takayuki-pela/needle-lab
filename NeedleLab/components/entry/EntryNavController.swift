//
//  EntryNavController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import UIKit

final class EntryNavController: UITabBarController {
    private let loginNavBuilder: LoginNavBuilder
    
    init(loginNavBuilder: LoginNavBuilder) {
        self.loginNavBuilder = loginNavBuilder
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = [loginNavBuilder.loginNavController]
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
