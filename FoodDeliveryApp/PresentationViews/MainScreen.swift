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
    
    let itemController = ItemController()
    
    var body: some View {
        
        ZStack {
            if isShowing {
                SideMenuView(isShowing: $isShowing)
            }
            HomeView(itemGroup: itemController.generateItems())
                .cornerRadius(isShowing ? 20 : 10)
                .offset(x: isShowing ? -200 : 0, y: isShowing ? 200 : 0)
                .scaleEffect(isShowing ? 0.8 : 1)
                .shadow(color: isShowing ? Color/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.65) : Color/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0), radius: 10, x: 5, y: 5 )
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







struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
