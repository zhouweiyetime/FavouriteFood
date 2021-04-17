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
            MasterView(food: foods)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView(foods: ViewModel())
    }
}
