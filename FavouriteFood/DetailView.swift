//
//  DetailView.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 31/3/21.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var foods: Food
    let foodviewmodel = FoodViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 1.0) {
            foodviewmodel.download(foods.FoodImage)
                .resizable()
                .scaledToFit()
List {
        TextField("Enter food name", text: $foods.FoodName)
            .font(.largeTitle)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .scaledToFit()
        TextField("Enter food description", text: $foods.FoodDescription)
                .font(.body)
                .scaledToFit()
        TextField("Enter food story", text: $foods.FoodStory)
                .padding([.top, .bottom, .trailing])
        Text("RECIPE")
            .font(.largeTitle)
            .fontWeight(.bold)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .scaledToFit()
        TextField("Enter food recipe", text: $foods.FoodRecipe)
        TextField("Enter image URL.", text: $foods.FoodImage)
            .textFieldStyle(RoundedBorderTextFieldStyle())
        Text("INGREDIENT")
            .font(.largeTitle)
            .fontWeight(.bold)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .scaledToFit()
                TextField("Enter food Ingredient", text: $foods.FoodIngredient)
                 }
              }
         }
        .toolbar{
            EditButton()
      }
        .frame(width: nil)
   }
}
