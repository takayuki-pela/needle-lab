//
//  HomeDetail.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation
import SwiftUI

protocol HomeFirstViewDependency: Dependency {
    var goToSecond: () -> Void { get }
}

protocol HomeFirstViewBuilder {
    var homeFirstUIHostingController: UIViewController { get }
}

final class HomeFirstViewComponent: Component<HomeFirstViewDependency>, HomeFirstViewBuilder {
    
    var homeFirstUIHostingController: UIViewController {
        return UIHostingController(rootView: homeFirstScreen)
    }
    
    var homeFirstViewController: HomeFirstViewController {
        return HomeFirstViewController(viewModel: homeFirstViewModel)
    }
    
    var homeFirstScreen: HomeFirstScreen {
        return HomeFirstScreen(
            viewController: homeFirstViewController,
            goToSecond: dependency.goToSecond
        )
    }
    
    var homeFirstViewModel: HomeFirstViewModel {
        return HomeFirstViewModel()
    }
    
    deinit {
        print("home first component deinit")
    }
}
