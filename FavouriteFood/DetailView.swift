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
        Text("Hello, \(food.FoodName)!")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(food:Food(FoodName: "Chips", FoodDescription: "Chips with some sauce.", FoodStory: "When I tried Chips for the first time, it became one of my favourite foods"))
        }
}
