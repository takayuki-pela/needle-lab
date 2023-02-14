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
    
    func pushToSecond(homeSecondViewBuilder: HomeSecondViewBuilder?) {
        if let nextVC = homeSecondViewBuilder?.homeSecondHostingController {
            self.pushViewController(nextVC, animated: true)
        }
        
    }

    deinit {
        print("home nav deinit")
    }
}
