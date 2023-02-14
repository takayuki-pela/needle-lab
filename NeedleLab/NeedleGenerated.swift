

import NeedleFoundation
import SwiftUI

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

private func parent2(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent.parent
}

private func parent3(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent.parent.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class EntryNavDependencyc1caa2a522e995b1a3e5Provider: EntryNavDependency {


    init() {

    }
}
/// ^->RootNavComponent->EntryNavComponent
private func factory3d38a5c3ce560fd06cdee3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EntryNavDependencyc1caa2a522e995b1a3e5Provider()
}
private class LoginInViewDependency2abb3c8c60c1e97fe50cProvider: LoginInViewDependency {
    var goToMain: () -> Void {
        return rootNavComponent.goToMain
    }
    var stateWrapper: StateWrapper {
        return rootNavComponent.stateWrapper
    }
    private let rootNavComponent: RootNavComponent
    init(rootNavComponent: RootNavComponent) {
        self.rootNavComponent = rootNavComponent
    }
}
/// ^->RootNavComponent->EntryNavComponent->LoginNavComponent->LoginViewComponent
private func factory7e03f72a3a9927a551b25b46fe57dd3e282050f7(_ component: NeedleFoundation.Scope) -> AnyObject {
    return LoginInViewDependency2abb3c8c60c1e97fe50cProvider(rootNavComponent: parent3(component) as! RootNavComponent)
}
private class HomeSecondViewDependency8cde6d322ec21db56f57Provider: HomeSecondViewDependency {
    var goToEntry: () -> Void {
        return rootNavComponent.goToEntry
    }
    var stateWrapper: StateWrapper {
        return rootNavComponent.stateWrapper
    }
    var printService: PrintService {
        return rootNavComponent.printService
    }
    private let rootNavComponent: RootNavComponent
    init(rootNavComponent: RootNavComponent) {
        self.rootNavComponent = rootNavComponent
    }
}
/// ^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeSecondViewComponent
private func factory372227dbbee43732aef65b46fe57dd3e282050f7(_ component: NeedleFoundation.Scope) -> AnyObject {
    return HomeSecondViewDependency8cde6d322ec21db56f57Provider(rootNavComponent: parent3(component) as! RootNavComponent)
}
private class HomeFirstViewDependency9909716c9cade48b7ac3Provider: HomeFirstViewDependency {
    var goToSecond: () -> Void {
        return homeNavComponent.goToSecond
    }
    private let homeNavComponent: HomeNavComponent
    init(homeNavComponent: HomeNavComponent) {
        self.homeNavComponent = homeNavComponent
    }
}
/// ^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeFirstViewComponent
private func factory03e6c5c57ef2f05fcab2a7b75c5f91bd88523d04(_ component: NeedleFoundation.Scope) -> AnyObject {
    return HomeFirstViewDependency9909716c9cade48b7ac3Provider(homeNavComponent: parent1(component) as! HomeNavComponent)
}

#else
extension EntryNavComponent: Registration {
    public func registerItems() {


    }
}
extension LoginNavComponent: Registration {
    public func registerItems() {


    }
}
extension LoginViewComponent: Registration {
    public func registerItems() {
        keyPathToName[\LoginInViewDependency.goToMain] = "goToMain-() -> Void"
        keyPathToName[\LoginInViewDependency.stateWrapper] = "stateWrapper-StateWrapper"
    }
}
extension RootNavComponent: Registration {
    public func registerItems() {


    }
}
extension HomeSecondViewComponent: Registration {
    public func registerItems() {
        keyPathToName[\HomeSecondViewDependency.goToEntry] = "goToEntry-() -> Void"
        keyPathToName[\HomeSecondViewDependency.stateWrapper] = "stateWrapper-StateWrapper"
        keyPathToName[\HomeSecondViewDependency.printService] = "printService-PrintService"
    }
}
extension HomeFirstViewComponent: Registration {
    public func registerItems() {
        keyPathToName[\HomeFirstViewDependency.goToSecond] = "goToSecond-() -> Void"
    }
}
extension HomeNavComponent: Registration {
    public func registerItems() {


    }
}
extension MainNavComponent: Registration {
    public func registerItems() {


    }
}
extension MyAccountViewComponent: Registration {
    public func registerItems() {

    }
}
extension SettingNavComponent: Registration {
    public func registerItems() {


    }
}
extension SettingViewComponent: Registration {
    public func registerItems() {


    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->RootNavComponent->EntryNavComponent", factory3d38a5c3ce560fd06cdee3b0c44298fc1c149afb)
    registerProviderFactory("^->RootNavComponent->EntryNavComponent->LoginNavComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootNavComponent->EntryNavComponent->LoginNavComponent->LoginViewComponent", factory7e03f72a3a9927a551b25b46fe57dd3e282050f7)
    registerProviderFactory("^->RootNavComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeSecondViewComponent", factory372227dbbee43732aef65b46fe57dd3e282050f7)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeFirstViewComponent", factory03e6c5c57ef2f05fcab2a7b75c5f91bd88523d04)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->HomeNavComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootNavComponent->MainNavComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->SettingNavComponent->SettingViewComponent->MyAccountViewComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->SettingNavComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->SettingNavComponent->SettingViewComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
