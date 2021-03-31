//
//  FavouriteFoodApp.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 26/3/21.
//

import SwiftUI

@main
struct FavouriteFoodApp: App {
    var foodViewModel: ViewModel {
        let foods = [Food(FoodName: "Chips", FoodDescription: "Chips with some sauce.", FoodStory: "When I tried Chips for the first time, it became one of my favourite foods")]
        let viewModel = ViewModel()
        viewModel.model = foods
        return viewModel
    }
    var body: some Scene {
        WindowGroup {
            ContentView(foods: foodViewModel)
        }
    }
}
