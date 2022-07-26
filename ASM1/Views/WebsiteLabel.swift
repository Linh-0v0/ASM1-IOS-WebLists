//
//  WebsiteLabel.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 26/07/2022.
//

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
