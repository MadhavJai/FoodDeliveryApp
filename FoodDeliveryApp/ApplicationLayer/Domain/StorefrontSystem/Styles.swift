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

struct singleColumn: View {
    var m: Drinks
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(m.image)
            .resizable()
            .frame(height: 300)
                .overlay(Color.black.opacity(0.3))
                .cornerRadius(15)
            VStack(alignment: .leading, spacing: 7) {
                HStack {
                    Image(systemName: "a.square.fill").foregroundColor(Color.gray)
                    Text(m.type)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        .textCase(.uppercase)
                }
                Text(m.name).font(.title)
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                Spacer()
                Text(m.description)
                    .lineLimit(2)
                    .foregroundColor(Color.white)
            }.padding()
            .padding(.horizontal, 5)
        }
        .padding(.horizontal,0)
        .padding(.vertical, 10)
        .shadow(color: Color.gray, radius: 12 )
    }
}

struct doubleColumn: View {
    var m: Drinks
    var body: some View {
        VStack {
            Image(m.image)
                .resizable()
                .frame(height: 150)
                .cornerRadius(5)
                .shadow(radius: 1)
            VStack(alignment: .leading) {
                HStack {
                    Text(m.name)
                        .lineLimit(1)
                    Spacer()
                    Image(systemName: "a.square.fill")
                }
                Text(m.description).lineLimit(1)
                    .foregroundColor(Color.gray)
            }
        }
    }
}
