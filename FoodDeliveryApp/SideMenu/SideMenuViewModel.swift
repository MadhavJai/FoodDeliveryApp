//
//  SideMenuViewModel.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case account
    case browse
    case cart
    case orders
    case wishlist
    
    var title: String {
        switch self  {
        case .account: return "Your Account"
        case .browse: return "Browse by Dept."
        case .cart: return "Go to Cart"
        case .orders: return "Your Orders"
        case .wishlist: return "Your Wishlist"
        }
    }
    
    var imageName: String {
        switch self  {
        case .account: return "person"
        case .browse: return "square.grid.2x2"
        case .cart: return "cart.fill"
        case .orders: return "cube.box"
        case .wishlist: return "bookmark"
        }
    }
}
