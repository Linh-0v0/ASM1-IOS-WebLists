//
//  ItemView.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 23/07/2022.
//

import SwiftUI

struct ItemView: View {
    var website: Item
    
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                VStack {
                    Image(website.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height*0.55)
                    ItemDescr(website: website)
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
