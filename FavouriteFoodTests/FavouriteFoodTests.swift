//
//  FavouriteFoodTests.swift
//  FavouriteFoodTests
//
//  Created by Weiye Zhou on 25/3/21.
//

import XCTest
@testable import FavouriteFood

class FavouriteFoodTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFoodName() throws {
    //Use XCTAssertEqual to test whether the value of FoodName is equal to the assigned value.
        let FoodName = "chips"
        let food = Food(FoodImage: chipsImage, FoodName: "chips", FoodDescription: chipsDescription, FoodStory: chipsStory, FoodRecipe: chipsRecipe, FoodIngredient: chipsIngredient)
        XCTAssertEqual(food.FoodName, FoodName)
    }
    
    func testFoodDescription() throws {
    //Use XCTAssertEqual to test whether the value of FoodDescription is equal to the assigned value.
        let FoodDescription = cakeDescription
        let food = Food(FoodImage: cakeImage, FoodName: "cake", FoodDescription: cakeDescription, FoodStory: cakeStory, FoodRecipe: cakeRecipe, FoodIngredient: cakeIngredient)
        XCTAssertEqual(food.FoodDescription, FoodDescription)
    }
    
    func testFoodStory() throws {
    //Use XCTAssertEqual to test whether the value of FoodStory is equal to the assigned value.
        let FoodStory = steakStory
        let food = Food(FoodImage: steakImage, FoodName: "steak", FoodDescription: steakDescription, FoodStory: steakStory, FoodRecipe: steakRecipe, FoodIngredient: steakIngredient)
        XCTAssertEqual(food.FoodStory, FoodStory)
    }
    
    func testFoodRecipe() throws {
    //Use XCTAssertEqual to test whether the value of FoodRecipe is equal to the assigned value.
        let FoodRecipe = chickenNuggetsRecipe
        let food = Food(FoodImage: chickenNuggetsImage, FoodName: "chickenNuggets", FoodDescription: chickenNuggetsDescription, FoodStory: chickenNuggetsStory, FoodRecipe: chickenNuggetsRecipe, FoodIngredient: chickenNuggetsIngredient)
        XCTAssertEqual(food.FoodRecipe, FoodRecipe)
    }
    
    func testFoodIngredient() throws {
    //Use XCTAssertEqual to test whether the value of FoodIngredient is equal to the assigned value.
        let FoodIngredient = hambergerIngredient
        let food = Food(FoodImage: hambergerImage, FoodName: "hamberger", FoodDescription: hambergerDescription, FoodStory: hambergerStory, FoodRecipe: hambergerRecipe, FoodIngredient: hambergerIngredient)
        XCTAssertEqual(food.FoodIngredient, FoodIngredient)
    }
    
    
    func testFood() throws {
    //Use XCTAssertEqual to test whether the value of Food is equal to the assigned value.
        let FoodImage = hambergerImage
        let FoodName = "hamberger"
        let FoodDescription = hambergerDescription
        let FoodStory = hambergerStory
        let FoodRecipe = hambergerRecipe
        let FoodIngredient = hambergerIngredient
        let food = Food(FoodImage: FoodImage, FoodName: FoodName, FoodDescription: FoodDescription, FoodStory: FoodStory, FoodRecipe: FoodRecipe, FoodIngredient: FoodIngredient)
        XCTAssertEqual(food.FoodImage, FoodImage)
        XCTAssert(food.FoodName == FoodName)
        XCTAssertEqual(food.FoodName, FoodName)
        XCTAssertEqual(food.FoodDescription, FoodDescription)
        XCTAssertEqual(food.FoodStory, FoodStory)
        XCTAssertEqual(food.FoodRecipe, FoodRecipe)
        XCTAssertEqual(food.FoodIngredient, FoodIngredient)
    }

  

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


