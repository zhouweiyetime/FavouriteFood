//
//  ViewModel.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 31/3/21.
//

import Foundation


// class to define an array which is a list of food.
class ViewModel: ObservableObject, Identifiable {
    //an array of Food
    @Published var model = [Food]()
    //function to add a food in viewModel
    func addElement() {
        _ = model.count + 1
        let foods = Food(FoodImage: chipsImage, FoodName: "<New>", FoodDescription: "Enter Description", FoodStory: "Enter Story", FoodRecipe: "Enter Recipe", FoodIngredient: " ")
        model.append(foods)
        
    }
    
    //function to delete Food from viewModel
    func remove(at indices: IndexSet) {
        model.remove(atOffsets: indices)
    }
    
}
