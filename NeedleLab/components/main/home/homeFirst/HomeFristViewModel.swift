//
//  HomeFristViewModel.swift
//  NeedleLab
//
//  Created by Takayuki Yamaguchi on 2023-02-13.
//

import SwiftUI

final class HomeFirstViewModel: ObservableObject {
    @Published var count: Int = 0
    
    deinit {
        print("home first view model")
    }
}
