//
//  HomeSecondComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation
import SwiftUI

protocol HomeSecondViewDependency: Dependency {
    var goToEntry: () -> Void { get }
}

protocol HomeSecondViewBuilder {
    var homeSecondHostingController: UIViewController { get }
}

final class HomeSecondViewComponent: Component<HomeSecondViewDependency>, HomeSecondViewBuilder {
    var homeSecondHostingController: UIViewController {
        return UIHostingController(rootView: homeSecondScreen)
    }
    
    var homeSecondViewController: HomeSecondViewController {
        return HomeSecondViewController(viewModel: homeSecondViewModel)
    }
    
    var homeSecondScreen: HomeSecondScreen {
        return HomeSecondScreen(viewModel: homeSecondViewModel, viewController: homeSecondViewController, goToEntry: dependency.goToEntry)
    }
    
    var homeSecondViewModel: HomeSecondViewModel {
        return HomeSecondViewModel()
    }
    
    deinit {
        print("home second deinit")
    }
}
