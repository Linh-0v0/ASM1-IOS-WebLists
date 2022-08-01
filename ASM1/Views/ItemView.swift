//  ItemView.swift
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

import SwiftUI

struct ItemView: View {
    var website: Item
    
    
    var body: some View {
        let rectContainer: CGFloat = 390.0
        let rectScrollView: CGFloat = 430.0
        
        ZStack {
            GeometryReader { geometry in
                VStack {
                    Image(website.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height*0.55)
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(ColorConstants.bgDescr)
                            .frame(minHeight: rectContainer)
                        ScrollView {
                            ItemDescr(website: website)
                                .zIndex(10)
                                .frame(height: rectScrollView)
                        }
                    }
                    .offset(y: -30)
                }
            }
        }
        .navigationTitle(website.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(website: websites[0])
    }
}
