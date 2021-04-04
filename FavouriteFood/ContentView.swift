//
//  ContentView.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 26/3/21.
//

import SwiftUI

struct ContentView: View {
    @State var foods: ViewModel
    var body: some View {
        NavigationView {
            MasterView(foods: foods)
                .navigationBarTitle(Text("Food"))
        }
    }
}

struct MasterView: View {
    var foods: ViewModel
    var body: some View {
        List{
            ForEach(foods.model, id: \.FoodName) {food in
                NavigationLink(
                    destination: DetailView(food: food),
                    label: {
                            Text(food.FoodName)
                               })
            }
        }
    }
}
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView(foods: ViewModel())
    }
}
