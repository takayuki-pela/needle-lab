//
//  HomeDetail.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation
import SwiftUI

protocol HomeFirstViewBuilder {
    var homeFirstUIHostingController: UIViewController { get }
}

final class HomeFirstViewComponent: Component<EmptyDependency>, HomeFirstViewBuilder {
    
    var homeFirstUIHostingController: UIViewController {
        return shared { UIHostingController(rootView: homeFirstScreen) }
    }
    
    var homeFirstViewController: HomeFirstViewController {
        return HomeFirstViewController(viewModel: homeFirstViewModel)
    }
    
    var homeFirstScreen: HomeFirstScreen {
        return HomeFirstScreen(
            viewModel: homeFirstViewModel,
            viewController: homeFirstViewController,
            goToSecond: goToSecond
        )
    }
    
    var homeFirstViewModel: HomeFirstViewModel {
        return HomeFirstViewModel()
    }
    
    var goToSecond: () -> Void {{
        self.homeFirstUIHostingController.navigationController?.pushViewController(self.homeSecondViewComponent.homeSecondHostingController, animated: true)
    }}
    
    var homeSecondViewComponent: HomeSecondViewComponent {
        return HomeSecondViewComponent(parent: self)
    }
    
    deinit {
        print("home first deinit")
    }
}
