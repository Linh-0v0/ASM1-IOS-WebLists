//
//  ItemDescr.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 24/07/2022.
//

import SwiftUI

struct ItemDescr: View {
    var paddingLeft: CGFloat = 37.0;
    var minHeight: CGFloat = 380.0;
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(ColorConstants.bgDescr)
                .frame(minHeight: minHeight)
            
            GeometryReader { geometry in
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack{
                            Spacer().frame(width: paddingLeft)
                            Text("Staggering beauty")
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
                            Text("A fairly peculiar little web toy called Staggering Beauty features a long, black figure that just wiggles in accordance with the mouse cursor's motions.")
                                .font(Font.custom("Inter", size: 13)).foregroundColor(ColorConstants.textDescr)
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
                            Link("Visit Here", destination: URL(string: "https://www.staggeringbeauty.com")!)
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
        ItemDescr()
            .previewLayout(.sizeThatFits)
    }
}
