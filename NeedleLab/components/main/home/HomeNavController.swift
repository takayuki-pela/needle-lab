//
//  HomeNavController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import UIKit

final class HomeNavController: UINavigationController {
    internal init(homeFirstViewBuilder: HomeFirstViewBuilder) {
        super.init(rootViewController: homeFirstViewBuilder.homeFirstUIHostingController)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        print("home nav deinit")
    }
}
