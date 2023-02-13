//
//  RootNavController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import UIKit

final class RootNavController: UITabBarController {
    internal init(mainNavBuilder: MainNavBuilder, entryNavBuilder: EntryNavBuilder) {
        self.mainNavBuilder = mainNavBuilder
        self.entryNavBuilder = entryNavBuilder
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = [mainNavBuilder.mainNavController, entryNavBuilder.entryNavController]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let mainNavBuilder: MainNavBuilder
    private let entryNavBuilder: EntryNavBuilder
}
