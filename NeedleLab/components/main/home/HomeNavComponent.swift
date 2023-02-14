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
        let vc = HomeNavController(
                homeFirstViewBuilder: homeFirstViewComponent,
                homeSecondViewBuilder: homeSecondViewComponent
        )
        capturedVC = vc
        return vc
    }
    var capturedVC: HomeNavController? = nil
    
    var homeFirstViewComponent: HomeFirstViewComponent {
        return HomeFirstViewComponent(parent: self)
    }
    
    var homeSecondViewComponent: HomeSecondViewComponent {
        return HomeSecondViewComponent(parent: self)
    }
    
    // --- dependencies to children
    var goToSecond: () -> Void {
        return { [weak self] in
            self?.capturedVC?.pushToSecond()
        }
    }
}
