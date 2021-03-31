//
//  FavouriteFood.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 26/3/21.
//

class Food{
    var FoodName: String
    var FoodDescription: String
    var FoodStory: String
    
    init(FoodName:String, FoodDescription:String, FoodStory: String) {
        self.FoodName = FoodName
        self.FoodStory = FoodStory
        self.FoodDescription = FoodDescription
    }
}

let food = Food(FoodName: "Chips", FoodDescription: "Chips with some sauce.", FoodStory: "When I tried Chips for the first time, it became one of my favourite foods")
