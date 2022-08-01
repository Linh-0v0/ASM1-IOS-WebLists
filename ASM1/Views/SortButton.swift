//  SortButton.swift
//  ASM1
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022
  Assessment: Assignment 1
  Author: Vu Bui Khanh Linh
  ID: 3864120
  Created  date: 30/07/2022
  Last modified: 01/08/2022
  Acknowledgement:
*/

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
