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
            Image("cart").resizable()
            .scaledToFit()
            .frame(width: 250.0, height: 250.0)
            
            Color.pink.opacity(0.85).edgesIgnoringSafeArea(.all)
            
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
                
                Button(action: {
                    print("log in tapped!")
                }){
                    Text("Log in")
                        .padding(10).font(.body)
                    
                    }.buttonStyle(OutlineButton(color: Color.white))
                    .padding(EdgeInsets(top: 30, leading: 70, bottom: 10, trailing: 70))
                
                Button(action: {
                    print("sign up tapped!")
                }){
                    Text("Sign up")
                        .padding(10).font(.body)
                }.buttonStyle(OutlineButton(color: Color.white))
                .padding(EdgeInsets(top: 10, leading: 70, bottom: 10, trailing: 70))
                
                Button(action: {
                    print("forgot password tapped!")
                }){
                    Text("Forgot password?")
                        .padding(10).font(.body)
                }.buttonStyle(OutlineButton(color: Color.white))
                    .padding(EdgeInsets(top: 10, leading: 70, bottom: 10, trailing: 70))
                
            }.padding()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
