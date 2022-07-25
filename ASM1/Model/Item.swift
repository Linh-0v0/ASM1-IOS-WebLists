//
//  Item.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 23/07/2022.
//
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

