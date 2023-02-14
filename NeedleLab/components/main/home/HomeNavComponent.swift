//
//  HomeNavComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation

protocol HomeNavBuilder {
    var homeNavController: HomeNavController { get }
}

final class HomeNavComponent: Component<EmptyDependency>, HomeNavBuilder {
    var homeNavController: HomeNavController {
         HomeNavController(homeFirstViewBuilder: homeFirstViewComponent)
    }
    var homeFirstViewComponent: HomeFirstViewComponent {
        return HomeFirstViewComponent(parent: self)
    }
//    
//    // --- dependencies to children
//    var goToSecond: () -> Void {
//        { [weak self] in
//            print(self?.homeNavController)
//            self?.homeNavController.pushToSecond()
//        }
//    }
}
