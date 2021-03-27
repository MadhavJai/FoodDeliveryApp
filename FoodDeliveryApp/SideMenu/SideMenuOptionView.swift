//
//  SideMenuOptionView.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct SideMenuOptionView: View {
    var body: some View {
        HStack(spacing: 16) {
            
            Spacer()
            
            Image(systemName: "person")
                .frame(width: 24, height: 24)
            
            Text("Account")
                .font(.system(size: 16, weight: .semibold))
            
            
        }
        .foregroundColor(.white)
        .padding() 
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView()
    }
}
