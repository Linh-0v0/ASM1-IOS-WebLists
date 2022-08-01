//  WebsiteLabel.swift
//  ASM1
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022
  Assessment: Assignment 1
  Author: Vu Bui Khanh Linh
  ID: 3864120
  Created  date: 26/07/2022
  Last modified: 01/08/2022
  Acknowledgement:
*/

import SwiftUI

struct WebsiteLabel: View {
    var website: Item
    
    var body: some View {
        HStack {
            website.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(website.name)
        }
    }
}

struct WebsiteLabel_Previews: PreviewProvider {
    static var previews: some View {
        WebsiteLabel(website: websites[0])
    }
}
