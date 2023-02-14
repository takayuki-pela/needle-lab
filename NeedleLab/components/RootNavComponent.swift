//
//  RootComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation

protocol RootNavBuilder {
    var rootNavController: UIViewController { get }
}

final class RootNavComponent: BootstrapComponent, RootNavBuilder {
    var rootNavController: UIViewController {
        RootNavController(
                mainNavBuilder: mainNavComponent,
                entryNavBuilder: entryNavComponent
        )
    }
    
    
    var mainNavComponent: MainNavComponent {
        return MainNavComponent(parent: self)
    }
    
    var entryNavComponent: EntryNavComponent {
        return EntryNavComponent(parent: self)
    }
    
    var goToMain: () -> Void { { [weak self] in
        guard let tabVC = self?.rootNavController as? RootNavController else { return }
        tabVC.switchToMain()
    } }
    
    var goToEntry: () -> Void { { [weak self] in
        guard let tabVC = self?.rootNavController as? RootNavController else { return }
        tabVC.switchToEntry()
    } }
    
}
