//
//  MenuItemTests.swift
//  LittleLemonDinnerMenuTests
//
//  Created by dana chang on 6/26/24.
//

import XCTest
@testable import LittleLemonDinnerMenu

final class MenuItemTests: XCTestCase {
    func test_menuItem_init_titleEqualsInitializedvalue() {
        let menuItem = MenuItem(price: 13.0, title: "Food 1", menuCategory: .food, ordersCount: 3, ingredient: [.tomatoSauce, .carrot, .pasta])
        XCTAssertEqual(menuItem.title, "Food 1")
    }
    
    func test_menuItem_init_ingredientEqualsInitializedvalue() {
        let menuItem = MenuItem(price: 13.0, title: "Food 1", menuCategory: .food, ordersCount: 3, ingredient: [.tomatoSauce, .carrot, .pasta])
        XCTAssertEqual(menuItem.ingredient, [.tomatoSauce, .carrot, .pasta])
    }
}
