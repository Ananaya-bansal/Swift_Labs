//
//  FoodTableTableViewController.swift
//  MealTracker
//
//  Created by Ananaya on 11/04/24.
//

import UIKit

class FoodTableTableViewController: UITableViewController {
    var meal: [Meal] {
            // Create three Meal objects
            var breakfast = Meal(name : "Breakfast",food: [])
            var lunch = Meal(name: "Lunch", food: [])
            var dinner = Meal(name: "Dinner", food: [])
            
            // Create three Food objects for each meal
            let breakfastFoods = [Food(name: "Oatmeal", description: "Healthy breakfast option"),
                                  Food(name: "Eggs", description: "Protein-rich breakfast choice"),
                                  Food(name: "Fruit Salad", description: "Refreshing breakfast fruit mix")]
            let lunchFoods = [Food(name: "Sandwich", description: "Classic lunch option"),
                              Food(name: "Salad", description: "Light and nutritious lunch"),
                              Food(name: "Soup", description: "Warm and comforting lunch")]
            let dinnerFoods = [Food(name: "Grilled Chicken", description: "Lean protein for dinner"),
                               Food(name: "Steamed Vegetables", description: "Healthy side dish"),
                               Food(name: "Rice", description: "Staple grain for dinner")]
            
            // Assign the food arrays to the respective meals
            breakfast.food = breakfastFoods
            lunch.food = lunchFoods
            dinner.food = dinnerFoods
            
            // Return the meals in an array
            return [breakfast, lunch, dinner]
        }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meal.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meal[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
               
               // Access the meal for the given section
               let meal = meal[indexPath.section]
               // Access the food item for the given row
               let food = meal.food[indexPath.row]
               
               // Configure the cell's content with food name and description
               var content = cell.defaultContentConfiguration()
               content.text = food.name
               content.secondaryText = food.description
               cell.contentConfiguration = content
               
               return cell
    }
   
}
