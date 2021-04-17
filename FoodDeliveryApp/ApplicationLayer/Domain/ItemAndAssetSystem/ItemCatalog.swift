//
//  ItemCatalog.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-04-16.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import Foundation




class ItemCatalog {
    
    let itemRepo = ItemRepository()
    
    func retrieveTodaysCatalog() -> [Drinks] {
        return itemRepo.getAllItems()
    }
    
    func retrieveStock() -> [DrinksStock] {
        return itemRepo.getProductStock()
    }
    
    
    
}


