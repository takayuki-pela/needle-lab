

import NeedleFoundation
import SwiftUI

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
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
private class HomeSecondViewDependency8cde6d322ec21db56f57Provider: HomeSecondViewDependency {


    init() {

    }
}
/// ^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeSecondViewComponent
private func factory372227dbbee43732aef6e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return HomeSecondViewDependency8cde6d322ec21db56f57Provider()
}
private class HomeFirstViewDependency9909716c9cade48b7ac3Provider: HomeFirstViewDependency {


    init() {

    }
}
/// ^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeFirstViewComponent
private func factory03e6c5c57ef2f05fcab2e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return HomeFirstViewDependency9909716c9cade48b7ac3Provider()
}
private class HomeNavDependency3e35ece81f77ac7e80c3Provider: HomeNavDependency {


    init() {

    }
}
/// ^->RootNavComponent->MainNavComponent->HomeNavComponent
private func factoryf319748c34c358068101e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return HomeNavDependency3e35ece81f77ac7e80c3Provider()
}
private class MainNavDependencyf3678d30813bd7dcc4e4Provider: MainNavDependency {


    init() {

    }
}
/// ^->RootNavComponent->MainNavComponent
private func factory292e885e4a00ce28ff9ce3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MainNavDependencyf3678d30813bd7dcc4e4Provider()
}

#else
extension EntryNavComponent: Registration {
    public func registerItems() {

    }
}
extension RootNavComponent: Registration {
    public func registerItems() {


    }
}
extension HomeSecondViewComponent: Registration {
    public func registerItems() {

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
    registerProviderFactory("^->RootNavComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeSecondViewComponent", factory372227dbbee43732aef6e3b0c44298fc1c149afb)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->HomeNavComponent->HomeFirstViewComponent", factory03e6c5c57ef2f05fcab2e3b0c44298fc1c149afb)
    registerProviderFactory("^->RootNavComponent->MainNavComponent->HomeNavComponent", factoryf319748c34c358068101e3b0c44298fc1c149afb)
    registerProviderFactory("^->RootNavComponent->MainNavComponent", factory292e885e4a00ce28ff9ce3b0c44298fc1c149afb)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
