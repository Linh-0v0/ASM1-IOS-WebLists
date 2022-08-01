//  ContentViewModel.swift
//  ASM1
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022
  Assessment: Assignment 1
  Author: Vu Bui Khanh Linh
  ID: 3864120
  Created  date: 30/07/2022
  Last modified: 01/08/2022
  Acknowledgement:
*/

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
