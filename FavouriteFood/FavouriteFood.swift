//
//  FavouriteFood.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 26/3/21.
//

import SwiftUI

class Food{
    var FoodImage: Image
    var FoodName: String
    var FoodDescription: String
    var FoodStory: String
    var FoodRecipe: String
    var FoodIngredient: String
    
    init(FoodImage:Image, FoodName:String, FoodDescription:String, FoodStory: String, FoodRecipe: String, FoodIngredient: String) {
        self.FoodImage = FoodImage
        self.FoodName = FoodName
        self.FoodStory = FoodStory
        self.FoodDescription = FoodDescription
        self.FoodRecipe = FoodRecipe
        self.FoodIngredient = FoodIngredient
    }
}
