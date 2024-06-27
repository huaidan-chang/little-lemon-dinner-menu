//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by dana chang on 6/25/24.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @EnvironmentObject var viewModel: MenuViewViewModel
    var body: some View {
        NavigationStack {
            List {
                Section("Selected categories") {
                    Toggle(MenuCategory.food.rawValue, isOn: $viewModel.showFood)
                    Toggle(MenuCategory.drink.rawValue, isOn: $viewModel.showDrinks)
                    Toggle(MenuCategory.dessert.rawValue, isOn: $viewModel.showDesserts)
                }
                
                Picker("Sort by", selection: $viewModel.sortBy) {
                    ForEach(SortBy.allCases, id: \.self) { category in
                        Text(category.rawValue)
                    }
                }
            }
        }
        .navigationTitle("Filter")
    }
}
