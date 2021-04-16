//
//  HViewGrid.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-03-27.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct HViewGrid: View {
    let itemController = ItemController()
    var title: String
    var itemGroup: [Drinks]
    @State var seeMore = false

    let rows = [
        GridItem(.flexible()),GridItem(.flexible())
    ]
    
    let row = [
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        VStack {
            HStack {
                Text(title).bold()
                Spacer()
                Button(action: {
                    withAnimation {
                        self.seeMore.toggle()
                    }
                }, label: {
                    Image(systemName: "chevron.right")
                            .rotationEffect(.degrees(seeMore ? 90 : 0))
                        .foregroundColor(.black)
                })
            }.padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: seeMore ? rows : row, alignment: .firstTextBaseline) {
                        ForEach(itemGroup) { m in
                            doubleColumn(m: m).frame(width: 150)
                        }
                    }.padding(.leading).frame(height: seeMore ? 410 : 200)
            }.ignoresSafeArea(edges: .vertical)
            Divider().padding(.all)
        }
    }
}


