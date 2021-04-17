//
//  MasterView.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 17/4/21.
//

import SwiftUI

struct MasterView: View {
    //set instance for ViewModel
    @ObservedObject var food: ViewModel
    @Environment(\.editMode) var editMode
    var body: some View {
        List{
            ForEach(food.model, id: \.FoodName) {food in
                NavigationLink(
                    destination: DetailView(foods: food).frame(width: UIScreen.main.bounds.width - 30),
                    label: {
                        food.FoodImage.resizable().frame(width: 80, height: 80)
                        VStack(alignment: .leading) {                        Text("\(editMode?.wrappedValue.isEditing ?? false ? "Edit " : "") \(food.FoodName)")
                            .font(.headline)
                            .fontWeight(.bold)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .scaledToFit()
                            Text("\(editMode?.wrappedValue.isEditing ?? false ? "Edit " : "") \(food.FoodDescription)")
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
        food.remove(at: offsets)
    }
    
// create move item function
    func moveItems(source: IndexSet, destination: Int) {
        food.model.move(fromOffsets: source, toOffset: destination)
    }
    
}


