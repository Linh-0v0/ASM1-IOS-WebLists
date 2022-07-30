///Users/linhvu/Documents/School/IOS prog/ASM1/ASM1.xcodeproj
//  ContentViewModel.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 30/07/2022.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var webList: [Item]
    
    
    init() {
        webList = websites
    }
    
    func updateContentArray() {
        webList.sort{ $0.name < $1.name}
    }
    
    func backToDefault() {
        webList = websites
    }
}
