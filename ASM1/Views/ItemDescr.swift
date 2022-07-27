//
//  ItemDescr.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 24/07/2022.
//

import SwiftUI

struct ItemDescr: View {
    var website: Item
    
    var body: some View {
        let paddingLeft: CGFloat = 37.0
        let minHeight: CGFloat = 390.0
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(ColorConstants.bgDescr)
                .frame(minHeight: minHeight)
            
            GeometryReader { geometry in
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack{
                            Spacer().frame(width: paddingLeft)
                            Text(website.name)
                                .font(Font.custom("Sarabun-Bold", size: 25))
                                .frame(height: 80)
                                .padding(.top, 25)
                        }
                        
                        HStack{
                            Spacer().frame(width: paddingLeft)
                            Text("About")
                                .font(Font.custom("Inter-Bold", size: 15))
                                .padding(.bottom, 15)
                        }
                        
                        HStack {
                            Spacer().frame(width: paddingLeft)
                            Text(website.descr)
                                .font(Font.custom("Inter-Light", size: 13)).foregroundColor(ColorConstants.textDescr)
                                .frame(width:geometry.size.width*0.8 )
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
                }.frame(minHeight: minHeight)
            }
        }
    }
}

struct ItemDescr_Previews: PreviewProvider {
    static var previews: some View {
        ItemDescr(website: websites[0])
    }
}
