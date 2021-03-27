//
//  SideMenuView.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing : Bool
    var body: some View {
        ZStack {
            // background color gradient
            LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.85), Color.purple.opacity(0.85)]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack {
                // Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 240)
                
                // Cell items
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    
                    switch option.title  {
                    case "Your Account":
                        NavigationLink(
                            
                            destination: Text(option.title),
                            label: {
                                SideMenuOptionView(viewModel: option)
                            }
                        )
                        
                    case "Browse by Dept.":
                        NavigationLink(
                            
                            destination: ItemDept(),
                            label: {
                                SideMenuOptionView(viewModel: option)
                            }
                        )
                    case "Go to Cart":
                        NavigationLink(
                            
                            destination: Text(option.title),
                            label: {
                                SideMenuOptionView(viewModel: option)
                            }
                        )
                    case "Your Orders":
                        NavigationLink(
                            
                            destination: Text(option.title),
                            label: {
                                SideMenuOptionView(viewModel: option)
                            }
                        )
                    
                    case "Your Wishlist":
                        NavigationLink(
                            
                            destination: Text(option.title),
                            label: {
                                SideMenuOptionView(viewModel: option)
                            }
                        )
                    
                    default:
                        NavigationLink(
                            
                            destination: Text(option.title),
                            label: {
                                SideMenuOptionView(viewModel: option)
                            }
                        )
                    }
                    
                }
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
