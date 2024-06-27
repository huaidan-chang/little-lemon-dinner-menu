//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by dana chang on 6/25/24.
//

import SwiftUI

struct MenuItemsView: View {
    @StateObject private var viewModel = MenuViewViewModel()
    var body: some View {
        NavigationStack {
            ScrollView {
                if viewModel.showFood {
                    MenuGridView(menuCategory: .food).environmentObject(viewModel)
                }
                
                if viewModel.showDrinks {
                    MenuGridView(menuCategory: .drink).environmentObject(viewModel)
                }
                
                if viewModel.showDesserts {
                    MenuGridView(menuCategory: .dessert).environmentObject(viewModel)
                }
            }
            .navigationTitle("Menu")
            .toolbar {
                Button(action: {
                    viewModel.showOptionView.toggle()
                }) {
                    Image(systemName: "slider.horizontal.3")
                }
            }.sheet(isPresented: $viewModel.showOptionView) {
                NavigationStack {
                    MenuItemsOptionView().environmentObject(viewModel).toolbar{
                        Button("Done") {
                            viewModel.showOptionView.toggle()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MenuItemsView()
}
