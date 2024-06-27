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
        Text("hello")
        NavigationStack {
            ScrollView {
                Text("Food Drinks")
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
