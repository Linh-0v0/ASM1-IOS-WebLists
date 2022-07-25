//
//  ItemView.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 23/07/2022.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        ZStack {
            BackArrow().zIndex(100).position(x: 40, y: 20)
            GeometryReader { geometry in
                VStack {
                    Image("Screen Shot 2022-07-24 at 12.16.22")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.top)
                        .frame(width: geometry.size.width, height: geometry.size.height*0.55)
                    ItemDescr()
                        .offset(y: -30)
                }
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
