//
//  LoginScreen.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import SwiftUI

struct LoginScreen: View {
    @ObservedObject var viewModel: LoginViewModel
    @ObservedObject var globalCount: CountState
    
    var goToMain: () -> Void
    
    var body: some View {
        
        VStack {
            Text("Login")
            
            Button {
                goToMain()
            } label: {
                Text("Go to main")
            }
            
            Text("Global State \(globalCount.count)")

        }
    }
}
//
//struct LoginScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginScreen(viewModel: LoginViewModel(), goToMain: {})
//    }
//}
