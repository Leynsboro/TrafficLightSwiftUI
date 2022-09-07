//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Илья Гусаров on 06.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    enum Lights {
        case red, yellow, green, nothing
    }
    
    @State private var buttonText = "START"
    
    @State private var currentLight = Lights.nothing
    
    private func changeColor() {
        buttonText = "NEXT"
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        case .nothing: currentLight = .red
        }
    }
}

extension ContentView {
    var body: some View {
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    LightView(color: .red, opacity: currentLight == .red ? 1.0 : 0.3)
                    LightView(color: .yellow, opacity: currentLight == .yellow ? 1.0 : 0.3)
                    LightView(color: .green, opacity: currentLight == .green ? 1.0 : 0.3)
                    
                    Spacer()
                    
                    ChangeColorButton(label: buttonText) {
                        changeColor()
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
