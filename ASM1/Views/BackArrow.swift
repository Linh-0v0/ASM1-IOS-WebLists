//
//  BackArrow.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 25/07/2022.
//

import SwiftUI

struct BackArrow: View {
    var body: some View {
        ZStack {
        Circle()
            .fill(.white)
            .frame(height: 40)
            .overlay(HStack {
                Image(systemName: "arrow.left")
            })
        
        }
    }
}

struct BackArrow_Previews: PreviewProvider {
    static var previews: some View {
        BackArrow().previewLayout(.sizeThatFits)
    }
}
