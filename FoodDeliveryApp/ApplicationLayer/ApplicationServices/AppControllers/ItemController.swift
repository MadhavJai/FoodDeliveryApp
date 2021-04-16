//
//  ItemController.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-04-16.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import Foundation

class ItemController {
    
    let itemCatalogReference = ItemCatalog()
    var items:[Drinks] = []
    
    func generateItems() -> [Drinks] {
        items = itemCatalogReference.retrieveTodaysCatalog()
        return items
    }
    
}
