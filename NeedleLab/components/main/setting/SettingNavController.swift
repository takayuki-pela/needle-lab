//
//  SettingNavController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import UIKit

final class SettingNavController: UINavigationController {
    
    internal init(settingViewBuilder: SettingViewBuilder) {
        super.init(rootViewController: settingViewBuilder.settingHostingController)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        print("setting nav deinit")
    }
}
