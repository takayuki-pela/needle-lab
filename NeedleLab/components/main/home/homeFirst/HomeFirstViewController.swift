//
//  HomeFirstViewController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import Foundation

final class HomeFirstViewController {
    internal init(viewModel: HomeFirstViewModel) {
        self.viewModel = viewModel
    }
    
    var viewModel: HomeFirstViewModel
    
    func addCount() {
        print(viewModel.count)
        viewModel.count += 1
    }
    
    deinit {
        print("home first vc deinit")
    }
}
