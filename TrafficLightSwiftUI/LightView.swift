//
//  LightView.swift
//  TrafficLightSwiftUI
//
//  Created by Илья Гусаров on 06.09.2022.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .opacity(opacity)
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .green, opacity: 0.3)
    }
}
