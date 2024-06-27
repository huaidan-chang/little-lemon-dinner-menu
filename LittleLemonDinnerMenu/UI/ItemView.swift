//
//  ItemView.swift
//  LittleLemonDinnerMenu
//
//  Created by dana chang on 6/26/24.
//

import SwiftUI

struct ItemView: View {
    var menuItem: MenuItem
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.black)
                .frame(height: 100)
                .cornerRadius(8)
            
            Text(menuItem.title)
                .font(.title3)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    var menuItem = MenuItem(price: 5.0, title: "Drink 1", menuCategory: .drink, ordersCount: 1, ingredient: [])
    return ItemView(menuItem: menuItem)
}
