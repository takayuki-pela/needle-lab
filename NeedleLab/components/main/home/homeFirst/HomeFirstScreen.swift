//
//  HomeFirstScreen.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import SwiftUI

struct HomeFirstScreen: View {
    @ObservedObject var viewModel: HomeFirstViewModel
    var viewController: HomeFirstViewController
    
    var goToSecond: () -> Void
    
    var body: some View {
        VStack {
            Text("Home First")
            
            Button {
                viewController.addCount()
            } label: {
                Text("Count is \(viewModel.count)")
            }

            Button {
                goToSecond()
            } label: {
                Text("Go to second")
            }
        }
    }
}

struct HomeFirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeFirstScreen(viewModel: HomeFirstViewModel(), viewController: HomeFirstViewController(viewModel: HomeFirstViewModel()), goToSecond: {})
    }
}
