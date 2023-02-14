//
//  HomeSecondScreen.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import SwiftUI

struct HomeSecondScreen: View {
    @ObservedObject var viewModel: HomeSecondViewModel
    var viewController: HomeSecondViewController
    var goToEntry: () -> Void
    
    var body: some View {
        VStack {
            Text("Home Second")
            
            Button {
                viewController.addCount()
            } label: {
                Text("Count is \(viewModel.count)")
            }

            Button {
                goToEntry()
            } label: {
                Text("Go to Entry")
            }
        }
    }
}

struct HomeSecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeSecondScreen(viewModel: HomeSecondViewModel(), viewController: HomeSecondViewController(viewModel: HomeSecondViewModel()), goToEntry: {} )
    }
}
