//
//  HomeNavComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation

protocol HomeNavDependency: Dependency {
    
}

protocol HomeNavBuilder {
    var homeNavController: UIViewController { get }
}

final class HomeNavComponent: Component<HomeNavDependency>, HomeNavBuilder {
    var homeNavController: UIViewController {
        return HomeNavController(
            homeFirstViewBuilder: homeFirstViewComponent,
            homeSecondViewBuilder: homeSecondViewComponent
        )
    }
    
    var homeFirstViewComponent: HomeFirstViewComponent {
        return HomeFirstViewComponent(parent: self)
    }
    
    var homeSecondViewComponent: HomeSecondViewComponent {
        return HomeSecondViewComponent(parent: self)
    }
}
