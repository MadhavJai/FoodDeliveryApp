//
//  BillAndShipScreen.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct BillAndShipScreen: View {
    
    @State var isLinkActive = false

    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var country: String = ""
    @State private var streetAddress: String = ""
    @State private var townOrCity: String = ""
    @State private var province: String = ""
    @State private var postalCode: String = ""
    @State private var phoneNumber: String = ""
    @State private var email: String = ""
    //may need to change these 4 along with phoneNumber to int
    @State private var cardNumber: String = ""
    @State private var expMonth: String = ""
    @State private var expYear: String = ""
    @State private var cvvNumber: String = ""
    

    var body: some View {
        VStack{
        ScrollView {
            HStack {
                    Text("First Name:")
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                    
                TextField("First Name ...", text: $firstName).padding().textFieldStyle(OvalTextFieldStyle())
                Text("Last Name:")
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
                
            TextField("Last Name ...", text: $lastName).padding().textFieldStyle(OvalTextFieldStyle())
                        
                    

            } //.padding(.bottom, 20)
            
            HStack {
                    Text("Country:")
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                    
                TextField("Country...", text: $country).padding().textFieldStyle(OvalTextFieldStyle())
               
                Text("Street Address:")
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
                
            TextField("Address...", text: $streetAddress).padding().textFieldStyle(OvalTextFieldStyle())
                    
            }
            
            HStack {
                    Text("Town/City:")
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                    
                TextField("Town/City...", text: $townOrCity).padding().textFieldStyle(OvalTextFieldStyle())
               
                Text("Province:")
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
                
            TextField("Prov...", text: $province).padding().textFieldStyle(OvalTextFieldStyle())
                    
            }
            
            HStack {
                    Text("Postal Code:")
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                    
                TextField("Postal Code...", text: $postalCode).padding().textFieldStyle(OvalTextFieldStyle())
               
                Text("Phone Number:")
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
                
            TextField("Phone Num...", text: $phoneNumber).padding().textFieldStyle(OvalTextFieldStyle())
                    
            }
            HStack {
                    Text("Email:")
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                    
                TextField("Email...", text: $email).padding().textFieldStyle(OvalTextFieldStyle())
            }
        }
        }.navigationBarTitle("Billing and Shipping")
       
        VStack{
            Text("")
            Text("Payment").bold()
                HStack{
                    //need to change these images to master, visa, visa debit, american express; clickable icons
                    Image("tqpvqp1472668328").resizable()
                        .frame(width: 32.0, height: 32.0).padding()
                    Image("tqpvqp1472668328").resizable()
                        .frame(width: 32.0, height: 32.0).padding()
                    Image("tqpvqp1472668328").resizable()
                        .frame(width: 32.0, height: 32.0).padding()
                    Image("tqpvqp1472668328").resizable()
                        .frame(width: 32.0, height: 32.0).padding()
                }
                VStack{
                    
                    HStack {
                            
                        TextField("Card Number..", text: $cardNumber).padding().textFieldStyle(OvalTextFieldStyle())
                    
                }
                    
                    HStack {
                            
                        TextField("Expiry MM..", text: $expMonth).padding().textFieldStyle(OvalTextFieldStyle())
                        
                        TextField("Expiry YY..", text: $expYear).padding().textFieldStyle(OvalTextFieldStyle())
                    
                }
                    
                    HStack {
                    
                        TextField("CVV..", text: $cvvNumber).padding().textFieldStyle(OvalTextFieldStyle())
                    }
                    
                    NavigationLink(destination: OrderScreen(), isActive: $isLinkActive) {
                        Button(action: {
                            print("Billing Cofirmed!")
                            self.isLinkActive = true
                            
                        }){
                            Text("Confirm Order")
                                .padding(10).font(.body).padding()}
                    }
                
            }
                
    }
    }
    
    

}

struct BillAndShipScreen_Previews: PreviewProvider {
    static var previews: some View {
        BillAndShipScreen()
    }
}

