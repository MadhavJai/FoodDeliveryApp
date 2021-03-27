//
//  MainScreen.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct MainScreen: View {
    
    @State private var isShowing = false
    
    var body: some View {
        
        ZStack {
            if isShowing {
                SideMenuView(isShowing: $isShowing)
            }
            HomeView()
                .cornerRadius(isShowing ? 20 : 10)
                .offset(x: isShowing ? -200 : 0, y: isShowing ? 200 : 0)
                .scaleEffect(isShowing ? 0.8 : 1)
                .navigationTitle("Home page")
                .navigationBarTitleDisplayMode(.automatic)
                .navigationBarHidden(false)
                .navigationBarItems(trailing: Button(action: {
                    withAnimation(.spring()) {
                        isShowing.toggle()
                    }
                }, label: {
                    Image(systemName: "list.bullet")
                        .foregroundColor(.black)
                }))
        }
    }
}



struct HomeView: View {
    
    @State var edges =  UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        
        ZStack {
            // background color
            Color.white
            
            Text("Home page").padding()
        } // end of ZStack
        
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
