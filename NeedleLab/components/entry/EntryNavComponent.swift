//
//  EntryComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation

protocol EntryNavDependency: Dependency {
    
}

protocol EntryNavBuilder {
    var entryNavController: UIViewController { get }
}

final class EntryNavComponent: Component<EntryNavDependency>, EntryNavBuilder {
    var entryNavController: UIViewController {
        EntryNavController(loginNavBuilder: loginNavComponent)
    }
    
    var loginNavComponent: LoginNavComponent {
        LoginNavComponent(parent: self)
    }
}
