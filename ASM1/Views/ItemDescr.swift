//  ItemDescr.swift
//  ASM1
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022
  Assessment: Assignment 1
  Author: Vu Bui Khanh Linh
  ID: 3864120
  Created  date: 24/07/2022
  Last modified: 01/08/2022
  Acknowledgement:
*/

import SwiftUI

struct ItemDescr: View {
    var website: Item
    
    var body: some View {
        let paddingLeft: CGFloat = 37.0
        
        GeometryReader { geometry in
            VStack {
                VStack(alignment: .leading) {
                    HStack{
                        Spacer().frame(width: paddingLeft)
                        Text(website.name)
                            .font(Font.custom("Sarabun-Bold", size: 27))
                            .frame(height: 70)
                            .padding(.top, 20)
                    }
                    
                    HStack{
                        Spacer().frame(width: paddingLeft)
                        Text("About")
                            .font(Font.custom("Inter-Bold", size: 19))
                            .padding(.bottom, 15)
                    }
                    
                    HStack {
                        Spacer().frame(width: paddingLeft)
                        Text(website.descr)
                            .font(Font.custom("Inter-Light", size: 16)).foregroundColor(ColorConstants.textDescr)
                            .frame(width:geometry.size.width*0.8)
                    }
                    .padding(.bottom, 35)
                }
                
                HStack {
                    Spacer().frame(width: 30)
                    ZStack {
                        Button("Visit Here") {
                            print("Button clicked")
                        }
                        .buttonStyle(ButtonAnimation())
                        Link("Visit Here", destination: URL(string: website.link)!)
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, 30)
            }
        }
    }
}

struct ItemDescr_Previews: PreviewProvider {
    static var previews: some View {
        ItemDescr(website: websites[0])
    }
}
