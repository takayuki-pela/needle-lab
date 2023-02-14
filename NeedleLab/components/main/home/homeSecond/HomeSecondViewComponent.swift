//
//  HomeSecondComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation
import SwiftUI

protocol HomeSecondViewDependency: Dependency {
    var goToSetting: () -> Void { get }
    var goToEntry: () -> Void { get }
    var stateWrapper: StateWrapper { get }
    var printService: PrintService { get }
}

protocol HomeSecondViewBuilder {
    var homeSecondHostingController: UIViewController { get }
}

final class HomeSecondViewComponent: Component<HomeSecondViewDependency>, HomeSecondViewBuilder {
    var homeSecondHostingController: UIViewController {
        return UIHostingController(rootView: homeSecondScreen)
    }
    
    var homeSecondViewController: HomeSecondViewController {
        return HomeSecondViewController(viewModel: homeSecondViewModel, countState: dependency.stateWrapper.countState, printService: dependency.printService)
    }
    
    var homeSecondScreen: HomeSecondScreen {
        return HomeSecondScreen(viewModel: homeSecondViewModel, globalCount: dependency.stateWrapper.countState, viewController: homeSecondViewController, goToEntry: dependency.goToEntry, goToSetting: dependency.goToSetting)
    }
    
    var homeSecondViewModel: HomeSecondViewModel {
        return HomeSecondViewModel()
    }
    
    deinit {
        print("home second component deinit")
    }
}
