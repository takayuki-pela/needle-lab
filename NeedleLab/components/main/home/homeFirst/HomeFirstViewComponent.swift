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
    var homeFirstViewController: UIViewController { get }
}

final class HomeFirstViewComponent: Component<HomeFirstViewDependency>, HomeFirstViewBuilder {
    
    var homeFirstViewController: UIViewController {
        return UIHostingController(rootView: homeFirstScreen)
    }
    
    var homeFirstScreen: HomeFirstScreen {
        return HomeFirstScreen(viewModel: homeFirstViewModel, goToSecond: dependency.goToSecond)
    }
    
    var homeFirstViewModel: HomeFirstViewModel {
        return HomeFirstViewModel()
    }
}
