

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

private func parent4(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent.parent.parent.parent
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
    private let rootNavComponent: RootNavComponent
    init(rootNavComponent: RootNavComponent) {
        self.rootNavComponent = rootNavComponent
    }
}
/// ^->RootNavComponent->EntryNavComponent->LoginNavComponent->LoginViewComponent
private func factory7e03f72a3a9927a551b25b46fe57dd3e282050f7(_ component: NeedleFoundation.Scope) -> AnyObject {
    return LoginInViewDependency2abb3c8c60c1e97fe50cProvider(rootNavComponent: parent3(component) as! RootNavComponent)
}
private class HomeSecondViewDependency4cc1c19d041b25f7a5afProvider: HomeSecondViewDependency {
    var goToEntry: () -> Void {
        return rootNavComponent.goToEntry
    }
    private let rootNavComponent: RootNavComponent
    init(rootNavComponent: RootNavComponent) {
        self.rootNavComponent = rootNavComponent
    }
}
/// ^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeFirstViewComponent->HomeSecondViewComponent
private func factory83fbe82a9ab04b4637a90598d654cee8c28e7e05(_ component: NeedleFoundation.Scope) -> AnyObject {
    return HomeSecondViewDependency4cc1c19d041b25f7a5afProvider(rootNavComponent: parent4(component) as! RootNavComponent)
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
    }
}
extension RootNavComponent: Registration {
    public func registerItems() {


    }
}
extension HomeSecondViewComponent: Registration {
    public func registerItems() {
        keyPathToName[\HomeSecondViewDependency.goToEntry] = "goToEntry-() -> Void"
    }
}
extension HomeFirstViewComponent: Registration {
    public func registerItems() {


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
    registerProviderFactory("^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeFirstViewComponent->HomeSecondViewComponent", factory83fbe82a9ab04b4637a90598d654cee8c28e7e05)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeFirstViewComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->HomeNavComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootNavComponent->MainNavComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
