//
//  SettingComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation
import SwiftUI

protocol SettingNavBuilder {
    var settingNavController: SettingNavController { get }
}

final class SettingNavComponent: Component<EmptyDependency>, SettingNavBuilder {
    var settingNavController: SettingNavController {
        SettingNavController(settingViewBuilder: settingViewComponent)
    }
    var settingViewComponent: SettingViewComponent {
        return SettingViewComponent(parent: self)
    }
}
