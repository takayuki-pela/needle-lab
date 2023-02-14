//
//  HomeSecondScreen.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import SwiftUI

struct HomeSecondScreen: View {
    @ObservedObject var viewModel: HomeSecondViewModel
    var goToEntry: () -> Void
    
    var body: some View {
        VStack {
            Text("Home Second")
            
            Button {
                viewModel.count += 1
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
        HomeSecondScreen(viewModel: HomeSecondViewModel(), goToEntry: {} )
    }
}
