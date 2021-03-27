//
//  ContentView.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-25.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
//        Text("food delivery app")
        ZStack {
            Color.pink.opacity(0.85)
            VStack(alignment: .leading){
                Text("Enter your username")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                HStack{
                    TextField("Username", text: $username).textFieldStyle(OvalTextFieldStyle())
                    
                }.padding(.bottom, 20)
                Text("Enter your password")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                HStack{
                    TextField("Password", text: $password).textFieldStyle(OvalTextFieldStyle())
                    
                }
            }.padding()
        }
    }
}

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.green, lineWidth: 3))
            .shadow(color: .gray, radius: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
