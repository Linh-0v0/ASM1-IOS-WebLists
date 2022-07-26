//
//  ButtonAnimation.swift
//  ASM1
//
//  Created by Vu Bui Khanh Linh on 24/07/2022.
//

import SwiftUI

struct ButtonAnimation: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .frame(width: 190, height: 35)
            .background(ColorConstants.buttonDescr)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .font(Font.custom("Inter-SemiBold", size: 16))
    }
}

struct ButtonAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Button("Press Me") {
            print("Button clicked")
        }
        .buttonStyle(ButtonAnimation())
    }
}
