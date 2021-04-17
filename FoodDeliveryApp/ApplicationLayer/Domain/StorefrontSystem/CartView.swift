//
//  CartView.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-04-17.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct CartView: View {
    
    @State var stepperValue: Int = 0
    @State var stepperValueTwo: Int = 0
    @State var stepperValueThree: Int = 0
    var cartContent:[DrinksStock]
    @State var totalPrice: Double = 0
    
    func priceRounder(count: Int, price: Double) -> String {
        let total = Double(count)*price
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter.string(from: total as NSNumber)!
    }
    
    func calcTotalPrice() -> Double {
        totalPrice = ((Double(stepperValue)*cartContent[0].price)+(Double(stepperValue)*cartContent[1].price)+(Double(stepperValue)*cartContent[2].price))
        return totalPrice
    }
    
    func numberRounder(number: Double) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter.string(from: number as NSNumber)!
    }

    
    var body: some View {
        ScrollView {
            
            HStack {
                Text("Product(s)")
                Text("")
                Text("Name")
                Text("Price")
                Text("  ")
                Text("Quantity")
                Text("  ")
                Text("Total")

            }.underlineTextField()
            
            HStack {
                Image("2x8thr1504816928").resizable()
                    .frame(width: 32.0, height: 32.0).padding()
                Text(cartContent[0].name)
                Text("$\(numberRounder(number: cartContent[0].price))")
                Text("")
                Stepper("", value: $stepperValue, in: 0...cartContent[0].stock)
                Text("$\(priceRounder(count: stepperValue, price: cartContent[0].price))").padding()
                Text("")
            }
            
            
            HStack {
                Image("tqpvqp1472668328").resizable()
                    .frame(width: 32.0, height: 32.0).padding()
                Text(cartContent[1].name)
                Text("$\(numberRounder(number: cartContent[1].price))")
                Text("")
                Stepper("", value: $stepperValueTwo, in: 0...cartContent[1].stock)
                Text("$\(priceRounder(count: stepperValueTwo, price: cartContent[1].price))").padding()
                Text("")
            }
            
            
            HStack {
                Image("l3cd7f1504818306").resizable()
                    .frame(width: 32.0, height: 32.0).padding()
                Text(cartContent[2].name)
                Text("$\(numberRounder(number: cartContent[2].price))")
                Text("")
                Stepper("", value: $stepperValueThree, in: 0...cartContent[2].stock)
                Text("$\(priceRounder(count: stepperValueThree, price: cartContent[2].price))").padding()
                Text("")
            }
            
            Text("Your total: $\(numberRounder(number: ( Double((priceRounder(count: stepperValueThree, price: cartContent[2].price)))! + Double((priceRounder(count: stepperValueTwo, price: cartContent[1].price)))! + Double((priceRounder(count: stepperValue, price: cartContent[0].price)))! )))")
            
            
        }
    }
}




