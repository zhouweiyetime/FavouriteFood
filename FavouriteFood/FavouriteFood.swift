//
//  FavouriteFood.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 26/3/21.
//

import SwiftUI
import Foundation

class Food: ObservableObject, Identifiable {
    @Published var FoodImage: Image
    @Published var FoodName: String
    @Published var FoodDescription: String
    @Published var FoodStory: String
    @Published var FoodRecipe: String
    @Published var FoodIngredient: String
    
    init(FoodImage:Image, FoodName:String, FoodDescription:String, FoodStory: String, FoodRecipe: String, FoodIngredient: String) {
        self.FoodImage = FoodImage
        self.FoodName = FoodName
        self.FoodStory = FoodStory
        self.FoodDescription = FoodDescription
        self.FoodRecipe = FoodRecipe
        self.FoodIngredient = FoodIngredient
    }
}
