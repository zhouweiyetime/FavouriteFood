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

