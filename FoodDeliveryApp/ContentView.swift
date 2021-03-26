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
            Color.blue.opacity(0.2)
            VStack{
                TextField("Username", text: $username).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Password", text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
