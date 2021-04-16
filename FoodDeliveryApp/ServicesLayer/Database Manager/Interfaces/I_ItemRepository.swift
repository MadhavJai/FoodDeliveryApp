//
//  I_ItemRepository.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-04-16.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import Foundation
import SwiftUI

protocol I_ItemsRepository {
    func addItem(drink:Drinks)
    func removeItem() -> String
    func getAllItems() ->  [Drinks]
}
