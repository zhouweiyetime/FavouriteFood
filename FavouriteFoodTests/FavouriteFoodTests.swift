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
        let FoodName = "Chips"
        let food = Food(FoodName: FoodName, FoodDescription: "Chips with some sauce", FoodStory: "When I tried Chips for the first time, it became one of my favourite foods")
        XCTAssertEqual(food.FoodName, FoodName)
    }
    
    func testFoodDescription() throws {
    //Use XCTAssertEqual to test whether the value of FoodDescription is equal to the assigned value.
        let FoodDescription = "Chips with some sauce"
        let food = Food(FoodName: "chips", FoodDescription: FoodDescription, FoodStory: "When I tried Chips for the first time, it became one of my favourite foods")
        XCTAssertEqual(food.FoodDescription, FoodDescription)
    }
    
    func testFoodStory() throws {
    //Use XCTAssertEqual to test whether the value of FoodStory is equal to the assigned value.
        let FoodStory = "When I tried Chips for the first time, it became one of my favourite foods"
        let food = Food(FoodName: "chips", FoodDescription: "Chips with some sauce", FoodStory: FoodStory)
        XCTAssertEqual(food.FoodStory, FoodStory)
    }
    
    func testFood() throws {
    //Use XCTAssertEqual to test whether the value of Food is equal to the assigned value.
        let FoodName = "Chips"
        let FoodDescription = "Chips with some sauce"
        let FoodStory = "When I tried Chips for the first time, it became one of my favourite foods"
        let food = Food(FoodName: FoodName, FoodDescription: FoodDescription, FoodStory: FoodStory)
        XCTAssert(food.FoodName == FoodName)
        XCTAssertEqual(food.FoodName, FoodName)
        XCTAssertEqual(food.FoodDescription, FoodDescription)
        XCTAssertEqual(food.FoodStory, FoodStory)
    }
    

  

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


