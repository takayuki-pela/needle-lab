//
//  MainComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation

protocol MainNavDependency: Dependency {
    
}

protocol MainNavBuilder {
    var mainNavController: UIViewController { get }
}

final class MainNavComponent: Component<MainNavDependency>, MainNavBuilder {    
    var mainNavController: UIViewController {
        return MainNavController()
    }
}
