//
//  WelcomeView.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 26/07/2022.
//

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true
    
    var body: some View {
        ZStack {
            if isWelcomeActive {
                WelcomeDetail(active: $isWelcomeActive)
            } else {
                WebsiteList()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
