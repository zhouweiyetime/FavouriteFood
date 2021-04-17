//
//  FoodViewModel.swift
//  FavouriteFood
//
//  Created by Weiye Zhou on 17/4/21.
//

import Foundation
import SwiftUI


class FoodViewModel{
    
    var imageFoodView = Dictionary<URL, Image>()
    
    func download(_ imageURLString: String) -> Image {
        guard let url = URL(string: imageURLString) else {
            let FoodImage = Image("nonexistent")
            return FoodImage
        }
        if let FoodImage = imageFoodView[url]{
            return FoodImage
        }
        guard let imageData = try? Data(contentsOf: url),
              let uiImage = UIImage(data: imageData) else{
              let FoodImage = Image("nonexistent")
            return FoodImage
        }
        let FoodImage = Image(uiImage: uiImage)
        imageFoodView[url] = FoodImage
        return FoodImage
    }
}



