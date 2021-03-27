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
    @State var isLinkActive = false
    
    var body: some View {
//        Text("food delivery app")
        NavigationView {
            ZStack {
                
                // Placeholder logo - NOT WORKING
//                Image("cart").resizable()
//                .scaledToFit()
//                .frame(width: 250.0, height: 250.0)
                
                // Background color
                Color.pink.opacity(0.85).edgesIgnoringSafeArea(.all)
                
                // Main content container
                VStack(alignment: .leading){
                    
                    // Username text field group
                    Text("Enter your username")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                    HStack{
                        TextField("Username", text: $username).textFieldStyle(OvalTextFieldStyle())
                        
                    }.padding(.bottom, 20)
                    
                    // Password text field group
                    Text("Enter your password")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                    HStack{
                        SecureField("Password", text: $password).textFieldStyle(OvalTextFieldStyle())
                        
                    }
                    
                    // Navigation link to Main screen - No authentication
                    NavigationLink(destination: MainScreen(), isActive: $isLinkActive) {
                        Button(action: {
                            print("log in tapped!")
                            self.isLinkActive = true
                        }){
                            Text("Log in")
                                .padding(10).font(.body)
                            
                        }.buttonStyle(OutlineButton(color: Color.white))
                            .padding(EdgeInsets(top: 30, leading: 70, bottom: 10, trailing: 70))
                    }
                    
                    // Fake button to sign up
                    Button(action: {
                        print("sign up tapped!")
                    }){
                        Text("Sign up")
                            .padding(10).font(.body)
                    }.buttonStyle(OutlineButton(color: Color.white))
                    .padding(EdgeInsets(top: 10, leading: 70, bottom: 10, trailing: 70))
                    
                    // Fake button to reset password
                    Button(action: {
                        print("forgot password tapped!")
                    }){
                        Text("Forgot password?")
                            .padding(10).font(.body)
                    }.buttonStyle(OutlineButton(color: Color.white))
                        .padding(EdgeInsets(top: 10, leading: 70, bottom: 10, trailing: 70))
                    
                }.padding() // end of VStack
                
            } // end of ZStack
            .navigationTitle("Sign out")
            .navigationBarHidden(true)
            
        } // end of NavigationView
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
