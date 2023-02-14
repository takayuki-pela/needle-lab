//
//  HomeSecondViewController.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-14.
//

import Foundation

final class HomeSecondViewController {
    internal init(viewModel: HomeSecondViewModel, countState: CountState, printService: PrintService) {
        self.printService = printService
        self.viewModel = viewModel
        self.countState = countState
    }
    
    var viewModel: HomeSecondViewModel
    var countState: CountState
    var printService: PrintService
    
    func addCount() {
        viewModel.count += 1
    }
    
    func addGlobalCount() {
        countState.count += 1
        printService.printSomething()
    }
    
    deinit {
        print("home second vc deinit")
    }
}
