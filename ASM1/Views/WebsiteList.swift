//  WebsiteList.swift
//  ASM1
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022
  Assessment: Assignment 1
  Author: Vu Bui Khanh Linh
  ID: 3864120
  Created  date: 26/07/2022
  Last modified: 01/08/2022
  Acknowledgement:
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
