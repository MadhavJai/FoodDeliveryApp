//
//  CartController.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-04-17.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import Foundation

class CartController {
    let itemCatalog = ItemCatalog()
    var itemsStock:[DrinksStock] = []
    
    func getItemStock() -> [DrinksStock] {
        itemsStock = itemCatalog.retrieveStock()
        return itemsStock
    }
    
    func decrementStock(productId : Int) {
        itemsStock[productId].stock -= 1
    }
    
    
    
}
