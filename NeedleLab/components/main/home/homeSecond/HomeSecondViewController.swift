//
//  HomeSecondViewController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-14.
//

import Foundation

final class HomeSecondViewController {
    internal init(viewModel: HomeSecondViewModel) {
        self.viewModel = viewModel
    }
    
    var viewModel: HomeSecondViewModel
    
    func addCount() {
        viewModel.count += 1
    }
}
