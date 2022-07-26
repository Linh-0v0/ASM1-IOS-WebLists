//
//  WebsiteList.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 26/07/2022.
//

import SwiftUI

struct WebsiteList: View {
    var body: some View {
        NavigationView {
            List(websites) {
                website in NavigationLink {
                    ItemView(website: website)
                    
                } label: {
                    WebsiteLabel(website: website)
                }
                .navigationTitle("Wacky Websites")
            }
        }
    }
}

struct WebsiteList_Previews: PreviewProvider {
    static var previews: some View {
        WebsiteList()
    }
}
