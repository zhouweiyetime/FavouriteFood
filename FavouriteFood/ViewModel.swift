//
//  ViewModel.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 31/3/21.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var model = [Food]()
    
    func addElement() {
        _ = model.count + 1
        let foods = Food(FoodImage: chipsImage, FoodName: "<New>", FoodDescription: "Enter Description", FoodStory: "Enter Story", FoodRecipe: "Enter Recipe", FoodIngredient: " ")
        model.append(foods)
        
    }
    
    func remove(at indices: IndexSet) {
        model.remove(atOffsets: indices)
    }
    
}
