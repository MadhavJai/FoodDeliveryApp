//
//  HomeView.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-04-16.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var edges =  UIApplication.shared.windows.first?.safeAreaInsets
    
    let columns = [
        GridItem(.flexible()),GridItem(.flexible())
    ]
    
    let column = [GridItem(.flexible())]
    
    var itemGroup: [Drinks]
    

    @State var search = false
    @State var searchText = ""
    @State var gridOption = false
    
    
    
    var body: some View {
        
        ZStack {
            // background color
            Color.white
            
            ScrollView {
                HStack {
                    Button(action: {
                        withAnimation {search.toggle()}
                    }) {
                        HStack {
                            Image(systemName:"magnifyingglass").foregroundColor(.black).font(.title2)
                        }
                    }
                    Spacer(minLength: 0)
                    Button(action: {
                        withAnimation {
                            gridOption.toggle()
                        }
                    }) {
                        Image(systemName: gridOption ? "rectangle.grid.1x2.fill" : "square.grid.2x2.fill").foregroundColor(.black).font(.title2)
                    }
                }.padding()
                HStack {
                    VStack(alignment: .leading) {
                        Text("Special sale - Cocktail Day").font(.title).bold()
                        Divider()
                    }
                                    
                                    
                    Spacer()
                                    
                }.padding(.horizontal)
                if gridOption {HViewGrid(title: "Your Favourites", itemGroup: itemGroup)}
                LazyVGrid(columns: gridOption ? columns : column , alignment: .center) {
                    ForEach(itemGroup) { m in
                        if gridOption {
                            doubleColumn(m: m)
                        } else {
                            singleColumn(m: m)
                        }
                    }
                }.padding(.horizontal)
            }// end of ScrollView

        } // end of ZStack
        
    }
}

