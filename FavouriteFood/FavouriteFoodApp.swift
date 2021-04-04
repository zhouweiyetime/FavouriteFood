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
        let foods = [Food(FoodImage: chipsImage, FoodName: "chips", FoodDescription: chipsDescription, FoodStory: chipsStory, FoodRecipe: chipsRecipe, FoodIngredient: chipsIngredient),
                     
                    Food(FoodImage: cakeImage, FoodName: "cake", FoodDescription: cakeDescription, FoodStory: cakeStory, FoodRecipe: cakeRecipe, FoodIngredient: cakeIngredient),
                    
                    Food(FoodImage: steakImage, FoodName: "steak", FoodDescription: steakDescription, FoodStory: steakStory, FoodRecipe: steakRecipe, FoodIngredient: steakIngredient),
                    
                    Food(FoodImage: chickenNuggetsImage, FoodName: "chickenNuggets", FoodDescription: chickenNuggetsDescription, FoodStory: chickenNuggetsStory, FoodRecipe: chickenNuggetsRecipe, FoodIngredient: chickenNuggetsIngredient),
                    
                     Food(FoodImage: hambergerImage, FoodName: "hamberger", FoodDescription: hambergerDescription, FoodStory: hambergerStory, FoodRecipe: hambergerRecipe, FoodIngredient: hambergerIngredient)]
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
