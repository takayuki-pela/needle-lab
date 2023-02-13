//
//  HomeSecondComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation
import SwiftUI

protocol HomeSecondViewDependency: Dependency {
    
}

protocol HomeSecondViewBuilder {
    var homeSecondViewController: UIViewController { get }
}

final class HomeSecondViewComponent: Component<HomeSecondViewDependency>, HomeSecondViewBuilder {
    var homeSecondViewController: UIViewController {
        return UIHostingController(rootView: homeSecondScreen)
    }
    
    var homeSecondScreen: HomeSecondScreen {
        return HomeSecondScreen(viewModel: homeSecondViewModel)
    }
    
    var homeSecondViewModel: HomeSecondViewModel {
        return HomeSecondViewModel()
    }
}
