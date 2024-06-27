//
//  MenuGridView.swift
//  LittleLemonDinnerMenu
//
//  Created by dana chang on 6/26/24.
//

import SwiftUI

struct MenuGridView: View {
    @EnvironmentObject var viewModel: MenuViewViewModel
    var menuCategory: MenuCategory
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var menuItems: [MenuItem] {
        switch menuCategory {
        case .food:
            return viewModel.foodMenuItems
        case .drink:
            return viewModel.drinkMenuItems
        case .dessert:
            return viewModel.dessertMenuItems
        }
    }
    
    var body: some View {
        HStack {
            Text(menuCategory.rawValue)
                .font(.title)
                .fontWeight(.semibold)
                .padding()
            Spacer()
        }
        
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(menuItems, id: \.self) { item in
                NavigationLink(destination: MenuItemDetailsView(menuItem: item)) {
                    ItemView(menuItem: item)
                }
            }
        }.padding()
    }
}

#Preview {
    @StateObject var viewModel = MenuViewViewModel()
    return MenuGridView(menuCategory: .food).environmentObject(viewModel)
}
