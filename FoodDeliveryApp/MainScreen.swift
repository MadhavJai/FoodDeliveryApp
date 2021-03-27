//
//  MainScreen.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct MainScreen: View {
    
    var body: some View {
        
        ZStack {
            // background color
            Color.white
            
            Text("Home page").padding()
        } // end of ZStack
        .navigationTitle("Home page")
        .navigationBarTitleDisplayMode(.automatic)
        .navigationBarHidden(false)
        .navigationBarItems(trailing: Button(action: {
            print("sidebar tapped")
        }, label: {
            Image(systemName: "list.bullet")
                .foregroundColor(.black)
        }))
    }
}



struct Home: View {
    
    @State var edges =  UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        
        VStack {
            
            ZStack {
                
                HStack {
                    
                    Button(action: {}, label: {
                        Image(systemName: "line.horizontal.3")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                    })
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        
                        Image(systemName: "person.fill")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 35, height: 35)
                            
                    })
                } // end of HStack
                
                Text("Home")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            .padding(.top,edges!.top)
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0.0, y: 0.0)
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
