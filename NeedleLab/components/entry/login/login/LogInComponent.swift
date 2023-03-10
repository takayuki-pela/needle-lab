//
//  LogInComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation
import SwiftUI

protocol LoginInViewDependency: Dependency {
    var goToMain: () -> Void { get }
    var stateWrapper: StateWrapper { get }
}

protocol LoginViewBuilder {
    var loginViewController: UIViewController { get }
}

final class LoginViewComponent: Component<LoginInViewDependency>, LoginViewBuilder {
    
    var loginViewController: UIViewController {
        return UIHostingController(rootView: loginScreen)
    }
    
    var loginScreen: LoginScreen {
        return LoginScreen(viewModel: LoginViewModel(), globalCount: dependency.stateWrapper.countState, goToMain: dependency.goToMain)
    }
    
    var loginViewModel: LoginViewModel {
        return LoginViewModel()
    }
}
