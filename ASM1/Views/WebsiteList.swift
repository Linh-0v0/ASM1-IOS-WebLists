//
//  WebsiteList.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 26/07/2022.
//

/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Your name (e.g. Nguyen Van Minh)
  ID: Your student id (e.g. 1234567)
  Created  date: dd/mm/yyyy (e.g. 31/07/2022)
  Last modified: dd/mm/yyyy (e.g. 05/08/2022)
  Acknowledgement: Acknowledge the resources that you use here.
*/

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
