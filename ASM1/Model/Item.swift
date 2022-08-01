//  Item.swift
//  ASM1
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022
  Assessment: Assignment 1
  Author: Vu Bui Khanh Linh
  ID: 3864120
  Created  date: 23/07/2022
  Last modified: 01/08/2022
  Acknowledgement:
*/
import Foundation
import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var link: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var descr: String
}

