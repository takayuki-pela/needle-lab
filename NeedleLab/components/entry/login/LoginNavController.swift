//
//  LoginNavController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import UIKit

final class LoginNavController: UINavigationController {
    internal init(loginViewBuilder: LoginViewBuilder) {
        self.loginViewBuilder = loginViewBuilder
        super.init(rootViewController: loginViewBuilder.loginViewController)
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let loginViewBuilder: LoginViewBuilder
}
