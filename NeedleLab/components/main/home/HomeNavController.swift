//
//  HomeNavController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import UIKit

final class HomeNavController: UINavigationController {
    internal init(homeFirstViewBuilder: HomeFirstViewBuilder, homeSecondViewBuilder: HomeSecondViewBuilder) {
        self.homeFirstViewBuilder = homeFirstViewBuilder
        self.homeSecondViewBuilder = homeSecondViewBuilder
        super.init(rootViewController: homeFirstViewBuilder.homeFirstViewController)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let homeFirstViewBuilder: HomeFirstViewBuilder
    private let homeSecondViewBuilder: HomeSecondViewBuilder
    
    func pushToSecond() {
        self.pushViewController(homeSecondViewBuilder.homeSecondViewController, animated: true)
    }
    
    deinit {
        print("home nav deinit")
    }
}
