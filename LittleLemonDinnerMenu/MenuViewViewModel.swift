//
//  MenuItemsViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by dana chang on 6/26/24.
//

import Foundation

class MenuViewViewModel: ObservableObject {
    @Published var foodMenuItems: [MenuItem] = [
        MenuItem(title: "Food 1", ingredient: [.tomatoSauce, .carrot, .pasta]),
        MenuItem(title: "Food 2", ingredient: [.tomatoSauce, .spinach, .pasta]),
        MenuItem(title: "Food 3", ingredient: [.tomatoSauce, .broccoli, .pasta]),
        MenuItem(title: "Food 4", ingredient: [.tomatoSauce, .spinach, .carrot, .pasta]),
        MenuItem(title: "Food 5", ingredient: [.tomatoSauce, .spinach, .broccoli, .pasta]),
        MenuItem(title: "Food 6", ingredient: [.tomatoSauce, .carrot, .broccoli, .pasta]),
        MenuItem(title: "Food 7", ingredient: [.tomatoSauce, .spinach, .broccoli, .carrot, .pasta]),
        MenuItem(title: "Food 8", ingredient: [.tomatoSauce, .spinach, .broccoli, .carrot]),
        MenuItem(title: "Food 9", ingredient: [.spinach, .broccoli, .carrot]),
        MenuItem(title: "Food 10", ingredient: [.spinach, .pasta]),
        MenuItem(title: "Food 11", ingredient: [.broccoli, .pasta]),
        MenuItem(title: "Food 12", ingredient: [.carrot, .pasta])
    ]
    
    @Published var drinkMenuItems: [MenuItem] = [
        MenuItem(title: "Drink 1", ingredient: []),
        MenuItem(title: "Drink 2", ingredient: []),
        MenuItem(title: "Drink 3", ingredient: []),
        MenuItem(title: "Drink 4", ingredient: []),
        MenuItem(title: "Drink 5", ingredient: []),
        MenuItem(title: "Drink 6", ingredient: []),
        MenuItem(title: "Drink 7", ingredient: []),
        MenuItem(title: "Drink 8", ingredient: [])
    ]
    
    @Published var dessertMenuItems: [MenuItem] = [
        MenuItem(title: "Dessert 1", ingredient: []),
        MenuItem(title: "Dessert 2", ingredient: []),
        MenuItem(title: "Dessert 3", ingredient: []),
        MenuItem(title: "Dessert 4", ingredient: [])
    ]
    
    @Published var showOptionView = false
    @Published var showFood = false
    @Published var showDrinks = false
    @Published var showDesserts = false
    @Published var sortBy = SortBy.fromAtoZ
}
