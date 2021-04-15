//
//  OrdersListView.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct OrdersListView: View {
    
    let orders: [String] = ["dsa67fsadk", "da432sdf8f", "ndjsa83da", "dsiafm3qfd", "fsnaf3dsa"]
    
    var body: some View {
        List {
            ForEach(orders, id: \.self) { o in
                HStack {
                    NavigationLink(
                        destination: Text("Now Tracking Order # \(o)"),
                        label: {
                            Text("Order \(o)")
                                .padding()
                        }
                    )
                    Spacer()
                }
                .padding(.leading)

            }
        }.navigationTitle("Your orders")
    }
}

struct OrdersListView_Previews: PreviewProvider {
    static var previews: some View {
        OrdersListView()
    }
}
