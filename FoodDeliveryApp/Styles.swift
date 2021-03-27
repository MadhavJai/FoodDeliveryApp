//
//  Styles.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import Foundation
import SwiftUI


struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(0)
            .overlay(RoundedRectangle(cornerRadius: 0)
            .stroke(Color.green, lineWidth: 3))
            .shadow(color: .gray, radius: 2)
    }
}

struct OutlineButton: ButtonStyle {
    
    var color: Color

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 20)
            .padding(10)
            .border(color, width: 5)
            .foregroundColor(.white)
            .padding(2)
            .shadow(radius: 10)
            .scaleEffect(configuration.isPressed ? 0.99 : 1.0)
        
    }
}
