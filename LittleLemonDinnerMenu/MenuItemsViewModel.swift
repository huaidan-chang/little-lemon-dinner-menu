//
//  MenuItemsViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by dana chang on 6/26/24.
//

import Foundation

class MenuItemsViewModel: ObservableObject {
    @Published var showOptionView = false
    @Published var showFood = false
    @Published var showDrinks = false
    @Published var showDesserts = false
    @Published var sortBy = SortBy.fromAtoZ
}
