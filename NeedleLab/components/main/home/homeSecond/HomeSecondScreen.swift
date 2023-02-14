//
//  HomeSecondScreen.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import SwiftUI

struct HomeSecondScreen: View {
    @ObservedObject var viewModel: HomeSecondViewModel
    @ObservedObject var globalCount: CountState
    var viewController: HomeSecondViewController
    var goToEntry: () -> Void
    var goToSetting: () -> Void
    
    var body: some View {
        VStack {
            Text("Home Second")
            
            Button {
                viewController.addCount()
            } label: {
                Text("Count is \(viewModel.count)")
            }
            
            Button {
                viewController.addGlobalCount()
            } label: {
                Text("Global Count is \(globalCount.count)")
            }

            Button {
                goToEntry()
            } label: {
                Text("Go to Entry")
            }
            Button {
                goToSetting()
            } label: {
                Text("Go to Setting")
            }
        }
    }
}

//struct HomeSecondScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeSecondScreen(viewModel: HomeSecondViewModel(), viewController: HomeSecondViewController(viewModel: HomeSecondViewModel()), goToEntry: {} )
//    }
//}
