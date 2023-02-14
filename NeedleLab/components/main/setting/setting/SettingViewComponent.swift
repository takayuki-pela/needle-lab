//
//  SettingViewComponent.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import NeedleFoundation
import SwiftUI

protocol SettingViewBuilder {
    var settingHostingController: UIViewController { get }
}

final class SettingViewComponent: Component<EmptyDependency>, SettingViewBuilder {
    var settingHostingController: UIViewController {
        shared { UIHostingController(rootView: settingScreen) }
    }
    
    var settingViewController: SettingViewController {
        return SettingViewController()
    }
    
    var settingScreen: SettingScreen {
        return SettingScreen(viewController: settingViewController, goToMyAccount: goToMyAccount)
    }
    
    var goToMyAccount: () -> Void {{ [weak self] in
        guard let self = self else { return }
        self.settingHostingController.navigationController?.pushViewController(self.myAccountViewComponent.myAccountHostingController, animated: true)
    }}
    
    var myAccountViewComponent: MyAccountViewComponent {
        MyAccountViewComponent(parent: self)
    }

    deinit {
        print("setting component deinit")
    }
}
