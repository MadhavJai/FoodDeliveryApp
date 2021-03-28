//
//  CartScreen.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct CartScreen: View {

    @State var stepperValue: Int = 0
    @State var stepperValueTwo: Int = 0
    @State var stepperValueThree: Int = 0
    @State var isLinkActive = false
    
    var body: some View {
        ScrollView {
            
            HStack {
                Text("Prodcut(s)")
                Text("")
                Text("Name")
                Text("Price")
                Text("  ")
                Text("Quantity")
                Text("  ")
                Text("Total")

            }.underlineTextField()
            
            HStack {
                Text(" ")
                Image("2x8thr1504816928").resizable()
                    .frame(width: 32.0, height: 32.0).padding()
                Text("First Test Item")
                Text("10$")
                Text("")
                Stepper("", value: $stepperValue)
                Text("\(stepperValue)"+"*"+"price" ).padding()
                Text("")
            }
            
            
            HStack {
                Text(" ")
                Image("tqpvqp1472668328").resizable()
                    .frame(width: 32.0, height: 32.0).padding()
                Text("Second Item")
                Text("10$")
                Text("")
                Stepper("", value: $stepperValueTwo)
                Text("\(stepperValueTwo)"+"*"+"price" ).padding()
                Text("")
            }
            
            
            HStack {
                Text(" ")
                Image("l3cd7f1504818306").resizable()
                    .frame(width: 32.0, height: 32.0).padding()
                Text("Third Item")
                Text("10$")
                Text("")
                Stepper("", value: $stepperValueThree)
                Text("\(stepperValueThree)"+"*"+"price" ).padding()
                Text("")
            }
            
    
            
        }.navigationTitle("Shopping Cart")
        
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
