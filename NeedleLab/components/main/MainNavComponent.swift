//
//  MainComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation

protocol MainNavBuilder {
    var mainNavController: UIViewController { get }
}

final class MainNavComponent: Component<EmptyDependency>, MainNavBuilder {
    var mainNavController: UIViewController {
        shared { MainNavController(homeNavBuilder: homeNavComponent) }
    }
    
    var homeNavComponent: HomeNavComponent {
        return HomeNavComponent(parent: self)
    }
}
