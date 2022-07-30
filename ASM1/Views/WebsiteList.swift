//
//  WebsiteList.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 26/07/2022.
//

import SwiftUI

struct WebsiteList: View {
    @StateObject private var vm = ContentViewModel()
    
    var body: some View {
        VStack {
            NavigationView {
                List(vm.webList) {
                    website in NavigationLink {
                        ItemView(website: website)
                        
                    } label: {
                        WebsiteLabel(website: website)
                    }
                    .navigationTitle("Wacky Websites")
                }
            }
            SortButton(vm: vm)
        }
        
    }
}

struct WebsiteList_Previews: PreviewProvider {
    static var previews: some View {
        WebsiteList()
    }
}
