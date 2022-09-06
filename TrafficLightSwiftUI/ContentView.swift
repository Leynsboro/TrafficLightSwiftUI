//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Илья Гусаров on 06.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    enum Colors {
        case red, yellow, green
    }
    
    @State private var buttonText = "START"
    
    @State private var color = Colors.red
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    var body: some View {
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                VStack {
                    LightView(color: .red)
                        .opacity(redLight)
                    LightView(color: .orange)
                        .opacity(yellowLight)
                    LightView(color: .green)
                        .opacity(greenLight)
                    Spacer()
                    button
                }
            }
    }
    
    private var button: some View {
        Button(action: changeColor) {
            Text(buttonText)
                .font(.title)
        }
        .frame(width: 200, height: 70)
        .foregroundColor(.white)
        .background(.blue)
        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 4))
        .cornerRadius(25)
        .padding()
    }
    
    private func changeColor() {
        buttonText = "NEXT"
        switch color {
        case .red:
            redLight = 1.0
            greenLight = 0.3
            color = .yellow
        case .yellow:
            yellowLight = 1.0
            redLight = 0.3
            color = .green
        case .green:
            greenLight = 1.0
            yellowLight = 0.3
            color = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
