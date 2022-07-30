//
//  SortButton.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 30/07/2022.
//

import SwiftUI

struct SortButton: View {
    let vm: ContentViewModel
    @State var isSorted: Bool = false
    
    var body: some View {
        if isSorted {
            Button {
                vm.backToDefault()
                isSorted = false
                print("Sort button clicked")
            } label: {
                Text("Unsort")
            }
        } else {
            Button {
                vm.updateContentArray()
                isSorted = true
                print("Sort button clicked")
            } label: {
                Text("Sort by Name")
            }
        }
    }
}

//struct SortButton_Previews: PreviewProvider {
//    static var previews: some View {
//        SortButton()
//    }
//}
