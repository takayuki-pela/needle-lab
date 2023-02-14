//
//  SettingScreen.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-14.
//

import SwiftUI

struct SettingScreen: View {
    var viewController: SettingViewController
    var goToMyAccount: () -> Void
    var body: some View {
        VStack {
            Text("Setting")
            
            Button {
                goToMyAccount()
            } label: {
                Text("Go to My account")
            }

        }
       
    }
}

//struct SettingScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingScreen()
//    }
//}
