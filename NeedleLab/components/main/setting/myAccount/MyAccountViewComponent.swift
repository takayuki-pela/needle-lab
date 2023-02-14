//
//  MyAccountComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation
import SwiftUI


protocol MyAccountViewBuilder {
    var myAccountHostingController: UIViewController { get }
}
final class MyAccountViewComponent: Component<EmptyDependency>, MyAccountViewBuilder {
    var myAccountHostingController: UIViewController {
        return UIHostingController(rootView: myAccountScreen)
    }
    
    var myAccountViewController: MyAccountViewController {
        return MyAccountViewController()
    }
    
    var myAccountScreen: MyAccountScreen {
        return MyAccountScreen(viewController: myAccountViewController)
    }

    deinit {
        print("myAccount component deinit")
    }
}
