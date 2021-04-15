//
//  OrderScreen.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct OrderScreen: View {
    var body: some View {
        VStack {
            Text("Your order has been confirmed and is on the way!")
            Text("")
            Text("Your Order number")
            Text("MS-4492").border(Color.red)
            
            NavigationLink(destination: Text("HelloWorld")) {
                Button(action: {
                    print("Continue Shopping tapped!")

                    
                }){
                    Text("Continue Shopping")
                        .padding(10).font(.body)}
            }
            NavigationLink(destination: Text("HelloWorld")) {
                Button(action: {
                    print("Track Order tapped!")
                    
                }){
                    Text("Track Order")
                        .padding(10).font(.body)}
            }

    }.navigationTitle("Payment Complete!")
        
    }

}

struct OrderScreen_Previews: PreviewProvider {
    static var previews: some View {
        OrderScreen()
    }
}
