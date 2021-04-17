//
//  CartScreen.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct CartScreen: View {

    @State var isLinkActive = false
    let cartController = CartController()
//    let drinkCart = cartController
    
    var body: some View {
        
        CartView(cartContent: cartController.getItemStock())
            .navigationTitle("Shopping Cart")
        
        NavigationLink(destination: BillAndShipScreen(), isActive: $isLinkActive) {
            Button(action: {
                print("Cart Confirmed tapped!")
                self.isLinkActive = true
                
            }){
                Text("Confirm Cart")
                    .padding(10).font(.body)}
        }
    }
    

}

struct CartScreen_Previews: PreviewProvider {
    static var previews: some View {
        CartScreen()
    }
}
