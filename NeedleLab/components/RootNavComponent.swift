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
        shared { RootNavController(
            mainNavBuilder: mainNavComponent,
            entryNavBuilder: entryNavComponent
        )}
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
    
    var goToSetting: () -> Void { { [weak self] in
        guard let tabVC = self?.rootNavController as? RootNavController else { return }
        tabVC.switchToSetting()
    } }
    
    var stateWrapper: StateWrapper {
        shared {
            return StateWrapper()
        }
    }
    
    var printService: PrintService {
        shared {
            return PrintService()
        }
    }
}

final class StateWrapper {
    init() {
        print("state wrapper init")
    }
    let countState = CountState()
}

final class CountState: ObservableObject {
    @Published var count: Int = 0
}

final class PrintService {
    init() {
        print("print service init")
    }
    
    func printSomething() {
        print("aaaaaa")
    }
}
