//
//  ContentView.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 26/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("chips")
                .resizable()
                .scaledToFit()
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
               
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
