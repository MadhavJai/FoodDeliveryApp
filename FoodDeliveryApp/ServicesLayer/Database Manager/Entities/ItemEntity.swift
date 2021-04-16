//
//  ItemEntity.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-04-16.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import Foundation
import SwiftUI

struct Drinks: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var type: String
}

