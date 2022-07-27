//
//  WelcomeView.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 26/07/2022.
//

import SwiftUI

struct WelcomeDetail: View {
    @Binding var active: Bool
    
    var body: some View {
        ZStack {
            ColorConstants.bgWelcome.ignoresSafeArea(.all)
            VStack {
                Spacer()
                Image("WelcomeCat-removebg-preview")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 230)
                    .padding(.bottom, 30)
                
                Text("BIZZARE WEBSITES ")
                    .font(Font.custom("Sarabun-Bold", size: 30)).foregroundColor(ColorConstants.textDescr)
                    .padding(.bottom, 10)
                
                Text("For You to Visit and Entertain ")
                    .font(Font.custom("Inter-Light", size: 18)).foregroundColor(ColorConstants.textDescr)
                Spacer()
                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                        .fill(ColorConstants.buttonDescr)
                        .frame(width: 300, height:60)
                        .overlay(Text("Continue ")
                            .font(Font.custom("Inter-SemiBold", size: 20))
                            .foregroundColor(.white))
                })
                .zIndex(100)
                .padding(.bottom, 20)
            }
        }
    }
}

struct WelcomeDetail_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeDetail(active: .constant(true))
    }
}
