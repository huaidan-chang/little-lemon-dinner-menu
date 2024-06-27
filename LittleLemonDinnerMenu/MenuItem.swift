//
//  MenuItem.swift
//  LittleLemonDinnerMenu
//
//  Created by dana chang on 6/26/24.
//

import Foundation

struct MenuItem: Identifiable {
    var id : String = UUID().uuidString
    var title: String
    var ingredient: [Ingredient]
}
