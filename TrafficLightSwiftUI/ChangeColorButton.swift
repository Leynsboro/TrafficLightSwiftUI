//
//  ChangeColorButton.swift
//  TrafficLightSwiftUI
//
//  Created by Илья Гусаров on 07.09.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(width: 200, height: 70)
        .foregroundColor(.white)
        .background(.blue)
        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 4))
        .cornerRadius(25)
        .padding()
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(label: "START", action: {})
    }
}
