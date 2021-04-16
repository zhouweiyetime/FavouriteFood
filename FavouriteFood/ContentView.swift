//
//  ContentView.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 26/3/21.
//

import SwiftUI

// create Edit Button and Add Button
struct ContentView: View {
    @ObservedObject var foods: ViewModel
     var body: some View {
        NavigationView {
            MasterView(foods: foods)
                .navigationBarTitle(Text("Favourite Food"))
                .navigationBarItems(leading:
                        EditButton(),trailing:
                        Button(action: {
                            withAnimation {
                            foods.addElement()
                            }
                        }) {
                            Image(systemName: "plus")
                        })
        }
    }
}

struct MasterView: View {
    @ObservedObject var foods: ViewModel
    var body: some View {
        List{
            ForEach(foods.model, id: \.FoodName) {food in
                NavigationLink(
                    destination: DetailView(food: food)
                        .frame(width: UIScreen.main.bounds.width - 30),
                    label: {
                        food.FoodImage.resizable().frame(width: 80, height: 80)
                        VStack(alignment: .leading) {                        Text(food.FoodName)
                            .font(.headline)
                            .fontWeight(.bold)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .scaledToFit()
                        Text(food.FoodDescription)
                            .font(.footnote)
                            .fontWeight(.thin)
                            .scaledToFit()
                        }})
            }
            .onDelete(perform: deleteItems)
            .onMove(perform: moveItems)
        }
    }
// create delete item function
    func deleteItems(at offsets: IndexSet) {
        foods.remove(at: offsets)
    }
    
// create move item function
    func moveItems(source: IndexSet, destination: Int) {
        foods.model.move(fromOffsets: source, toOffset: destination)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView(foods: ViewModel())
    }
}
