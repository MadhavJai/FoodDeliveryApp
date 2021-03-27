//
//  SideMenuHeaderView.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            // close sidebar button
            Button(action: { isShowing.toggle() }, label: {
                Image(systemName: "xmark")
                    .frame(width: 56, height: 56)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment: .trailing) {
                
                // header image
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .padding(.bottom, 16)
                
                Text("First name Last name")
                    .font(.system(size:  24, weight: .semibold))
                
                Text("@username")
                    .font(.system(size: 18))
                    .padding(.bottom, 24)
                
                HStack(spacing: 12) {
                    Spacer()
                    HStack(spacing: 4) {
                        Text("Welcome").font(.system(size: 14))
                        Text("First name").font(.system(size: 14, weight: .semibold))
                    }
                    HStack(spacing: 4) {
                        Text("Balance:").font(.system(size: 14))
                        Text("$10.71").font(.system(size: 14, weight: .semibold))
                    }
                    
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView()
    }
}
