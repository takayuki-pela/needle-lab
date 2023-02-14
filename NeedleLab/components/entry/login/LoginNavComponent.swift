//
//  LoginNavComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation

protocol LoginNavBuilder {
    var loginNavController: LoginNavController { get }
}

final class LoginNavComponent: Component<EmptyDependency>, LoginNavBuilder {
    var loginNavController: LoginNavController {
        LoginNavController(loginViewBuilder: loginViewComponent)
    }
    
    var loginViewComponent: LoginViewComponent {
        return LoginViewComponent(parent: self)
    }

}
