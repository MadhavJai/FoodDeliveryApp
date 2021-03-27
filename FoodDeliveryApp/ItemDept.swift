//
//  ItemDept.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct ItemDept: View {
    

    @State private var searchText = ""
    @State private var isSearching = false
    
    let depts: [String] = ["Snacks", "Candy and Chocolates", "Beverages", "Canned foods", "Fruits and Vegatables", "Breads and Bakery", "Dried fruits and Nuts", "Pasta, Rice and Noodles", "Sauces and Condiments", "Oils", "Dairy and eggs", "Herbs and Spices", "Frozen foods", "Deli and meats"]
    
    var body: some View {

        ScrollView {
            
            HStack {
                TextField("Search", text: $searchText)
            }.underlineTextField()
            
            ForEach(depts, id: \.self) { dept in
                HStack {
                    NavigationLink(
                        destination: Text(dept),
                        label: {
                            Text(dept)
                        }
                    )
                    Spacer()
                }
                .padding(.leading)
                Divider()
            }
        }.navigationTitle("Shop by Departments")
        
    }
}

extension Color {
    static let darkPink = Color.pink
}

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
             .overlay(Rectangle().frame(height: 2).padding(.top, 35))
             .foregroundColor(.darkPink)
             .padding(10)
    }
}

struct ItemDept_Previews: PreviewProvider {
    static var previews: some View {
        ItemDept()
    }
}


