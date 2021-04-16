//
//  DetailView.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 31/3/21.
//

import SwiftUI

struct DetailView: View {
    @State var food: Food
    var body: some View {
        NavigationView {
        VStack(alignment: .leading) {
            food.FoodImage
                .resizable()
                .scaledToFit()
            List {
        Text(food.FoodName)
            .font(.largeTitle)
            .fontWeight(.bold)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .scaledToFit()
        Text(food.FoodDescription)
                .font(.body)
                .fontWeight(.thin)
                .scaledToFit()
        Text(food.FoodStory)
                .padding([.top, .bottom, .trailing])
        Text("RECIPE")
            .font(.largeTitle)
            .fontWeight(.bold)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .scaledToFit()
            Text(food.FoodRecipe)
                
        Text("INGREDIENT")
            .font(.largeTitle)
            .fontWeight(.bold)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .scaledToFit()
            Text(food.FoodIngredient)
                 }
              }
         }
        .toolbar{
            EditButton()
      }
   }
}
