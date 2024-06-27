//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by dana chang on 6/25/24.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var menuItem: MenuItem
    var body: some View {
        VStack {
            HStack {
                Text(menuItem.title)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer() // Pushes the title to the left
            }
            .padding(.horizontal)
            
            VStack(alignment: .center, spacing: 10) {
                Image("littlelemonlogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding()
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Price:").fontWeight(.bold)
                    Text("\(String(format: "%.2f", menuItem.price))").padding(1)
                    Text("Ordered:").fontWeight(.bold)
                    Text("\(menuItem.ordersCount)").padding(1)
                    if !menuItem.ingredient.isEmpty {
                        Text("Ingredients:")
                            .fontWeight(.bold)
                        ForEach(menuItem.ingredient, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    Spacer()
                }
            }
        }
        .navigationBarTitle("", displayMode: .inline) // Manage navigation bar title
        //        .navigationBarHidden(true) // Ensure the navigation bar is hidden
        .padding(.top) // Adjust padding if necessary
    }
}

#Preview {
    var menuItem =   MenuItem(price: 18.0, title: "Food 8", menuCategory: .food, ordersCount: 14, ingredient: [.tomatoSauce, .spinach, .broccoli, .carrot])
    return MenuItemDetailsView(menuItem: menuItem)
}
