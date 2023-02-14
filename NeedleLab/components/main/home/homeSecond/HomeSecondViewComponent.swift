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
    var homeSecondViewController: UIViewController { get }
}

final class HomeSecondViewComponent: Component<HomeSecondViewDependency>, HomeSecondViewBuilder {
    var homeSecondViewController: UIViewController {
        return UIHostingController(rootView: homeSecondScreen)
    }
    
    var homeSecondScreen: HomeSecondScreen {
        return HomeSecondScreen(viewModel: homeSecondViewModel, goToEntry: dependency.goToEntry)
    }
    
    var homeSecondViewModel: HomeSecondViewModel {
        return HomeSecondViewModel()
    }
    
    deinit {
        print("home second deinit")
    }
}
