//
//  HomeSecondScreen.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import SwiftUI

struct HomeSecondScreen: View {
    @ObservedObject var viewModel: HomeSecondViewModel
    
    var body: some View {
        VStack {
            Text("Home Second")
            
            Button {
                viewModel.count += 1
            } label: {
                Text("Count is \(viewModel.count)")
            }

        }
    }
}

struct HomeSecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeSecondScreen(viewModel: HomeSecondViewModel())
    }
}
