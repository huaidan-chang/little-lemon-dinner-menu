//
//  MenuItemsViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by dana chang on 6/26/24.
//

import Foundation

class MenuViewViewModel: ObservableObject {
    @Published var foodMenuItems: [MenuItem] = [
        MenuItem(price: 13.0, title: "Food 1", menuCategory: .food, ordersCount: 3, ingredient: [.tomatoSauce, .carrot, .pasta]),
        MenuItem(price: 14.0, title: "Food 2", menuCategory: .food, ordersCount: 5, ingredient: [.tomatoSauce, .spinach, .pasta]),
        MenuItem(price: 15.0, title: "Food 3", menuCategory: .food, ordersCount: 13, ingredient: [.tomatoSauce, .broccoli, .pasta]),
        MenuItem(price: 17.0, title: "Food 4", menuCategory: .food, ordersCount: 20, ingredient: [.tomatoSauce, .spinach, .carrot, .pasta]),
        MenuItem(price: 17.0, title: "Food 5", menuCategory: .food, ordersCount: 6, ingredient: [.tomatoSauce, .spinach, .broccoli, .pasta]),
        MenuItem(price: 17.0, title: "Food 6", menuCategory: .food, ordersCount: 7, ingredient: [.tomatoSauce, .carrot, .broccoli, .pasta]),
        MenuItem(price: 20.0, title: "Food 7", menuCategory: .food, ordersCount: 1, ingredient: [.tomatoSauce, .spinach, .broccoli, .carrot, .pasta]),
        MenuItem(price: 18.0, title: "Food 8", menuCategory: .food, ordersCount: 14, ingredient: [.tomatoSauce, .spinach, .broccoli, .carrot]),
        MenuItem(price: 12.0, title: "Food 9", menuCategory: .food, ordersCount: 1, ingredient: [.spinach, .broccoli, .carrot]),
        MenuItem(price: 13.0, title: "Food 10", menuCategory: .food, ordersCount: 1, ingredient: [.spinach, .pasta]),
        MenuItem(price: 14.0, title: "Food 11", menuCategory: .food, ordersCount: 2, ingredient: [.broccoli, .pasta]),
        MenuItem(price: 11.0, title: "Food 12", menuCategory: .food, ordersCount: 8, ingredient: [.carrot, .pasta])
    ]
    
    @Published var drinkMenuItems: [MenuItem] = [
        MenuItem(price: 5.0, title: "Drink 1", menuCategory: .drink, ordersCount: 1, ingredient: []),
        MenuItem(price: 10.0, title: "Drink 2", menuCategory: .drink, ordersCount: 1, ingredient: []),
        MenuItem(price: 9.0, title: "Drink 3", menuCategory: .drink, ordersCount: 1, ingredient: []),
        MenuItem(price: 4.0, title: "Drink 4", menuCategory: .drink, ordersCount: 1, ingredient: []),
        MenuItem(price: 6.0, title: "Drink 5", menuCategory: .drink, ordersCount: 1, ingredient: []),
        MenuItem(price: 8.0, title: "Drink 6", menuCategory: .drink, ordersCount: 1, ingredient: []),
        MenuItem(price: 7.0, title: "Drink 7", menuCategory: .drink, ordersCount: 1, ingredient: []),
        MenuItem(price: 11.0, title: "Drink 8", menuCategory: .drink, ordersCount: 1, ingredient: [])
    ]
    
    @Published var dessertMenuItems: [MenuItem] = [
        MenuItem(price: 12.0, title: "Dessert 1", menuCategory: .dessert, ordersCount: 30, ingredient: []),
        MenuItem(price: 13.0, title: "Dessert 2", menuCategory: .dessert, ordersCount: 15, ingredient: []),
        MenuItem(price: 15.0, title: "Dessert 3", menuCategory: .dessert, ordersCount: 22, ingredient: []),
        MenuItem(price: 14.0, title: "Dessert 4", menuCategory: .dessert, ordersCount: 12, ingredient: [])
    ]
    
    @Published var showOptionView = false
    @Published var showFood = true
    @Published var showDrinks = true
    @Published var showDesserts = true
    @Published var sortBy = SortBy.fromAtoZ
}
