//
//  ViewController.swift
//  Another Nyoba MC1
//
//  Created by Zhafira Millenia on 09/04/20.
//  Copyright © 2020 Zhafira Millenia. All rights reserved.
//

import UIKit


class CategoryMealVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //UITableViewController//
    
    var calories = ""
    var nama = ""
    @IBOutlet weak var helloNama: UILabel!
    @IBOutlet weak var fullfiledCalories: UILabel!
    @IBAction func resetButton(_ sender: Any) {
    }
    
    
    let cellColors = [UIColor(red: 0.67, green: 0.80, blue: 0.79, alpha: 1), UIColor(red:0.93, green: 0.78, blue: 0.37, alpha: 1), UIColor(red:0.92, green:0.54, blue:0.31, alpha:1.00)]
    
    let meals = [
        Category(mealsType: "Breakfast", mealsName: "Banana Milk", mealsCalories: "200cal", mealsKeteranganImages: ""),
        Category(mealsType: "Lunch", mealsName: "Soto Ayam", mealsCalories: "430cal", mealsKeteranganImages: ""),
        Category(mealsType: "Dinner", mealsName: "Add your lunch and see our food suggestions!", mealsCalories: "", mealsKeteranganImages: "")
    ]
    
      override func viewDidLoad() {
          super.viewDidLoad()
        helloNama.text = "Hello, \(nama)!"
        fullfiledCalories.text = "Fullfiled / \(calories)"
  //        self.tableView.rowHeight = 120
      }
    
//    func tableView(_ tableView: UITableView, numberOfSections section: Int) -> Int {
//        return 8
//    }
    
    func numberOfSections(in tableView:UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let category = meals[indexPath.row]
        let cellColor = cellColors[indexPath.row]
        cell.textLabel?.text = category.mealsType
        cell.detailTextLabel?.text = category.mealsName
        cell.backgroundColor = cellColor
//        cell.imageView?.image = UIImage(named: category.mealsKeteranganImages)
        return cell
    }
//
//   func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//    return "Sect-- \(section)"
//    }
    
    var selectedMealsType = ["Breakfast Meal", "Lunch Meal", "Dinner Meal"]
      
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
           let category = meals[indexPath.row]
           performSegue(withIdentifier: "breakfastVC", sender: category)
       }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let breakfastVC = segue.destination as? BreakfastViewController { breakfastVC.initMakanan(category: sender as! Category)
            
        }
       }
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func unwindToMainPage(_ sender: UIStoryboardSegue) {    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the Navigation Bar
       self.navigationController?.setNavigationBarHidden(true, animated: animated)
        self.navigationController?.navigationBar.tintColor = UIColor(red:0.89, green:0.46, blue:0.33, alpha:1.00)

    }




}
