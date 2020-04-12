//
//  BreakfastViewController.swift
//  Arsa MC1
//
//  Created by Zhafira Millenia on 12/04/20.
//  Copyright © 2020 Feidora Nadia Putri. All rights reserved.
//

import UIKit

struct Makanan {
   
    var breakfastFoodName: String
    var breakfastFoodCalories: String
}


let menuPagi = [
    Makanan(breakfastFoodName: "Pumpkin Soup", breakfastFoodCalories: "298cal"),
    Makanan(breakfastFoodName: "Pasta Carbonara", breakfastFoodCalories: "337cal"),
    Makanan(breakfastFoodName: "Dak Juk", breakfastFoodCalories: "252cal")
]

let menuSiang = [
    Makanan(breakfastFoodName: "Spicy Kimchi Ramen", breakfastFoodCalories: "553cal"),
        Makanan(breakfastFoodName: "Paleo Gado-Gado", breakfastFoodCalories: "594cal"),
         Makanan(breakfastFoodName: "Primavera Pizza", breakfastFoodCalories: "600cal")
]

let menuMalam = [
    Makanan(breakfastFoodName: "Couscous Bowl", breakfastFoodCalories: "100cal"),
        Makanan(breakfastFoodName: "Sweet Potato Pockets", breakfastFoodCalories: "320cal"),
        Makanan(breakfastFoodName: "Middle Eastern Steak & Rice", breakfastFoodCalories: "30cal")
]


class BreakfastViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    

    var searchMakanan: String = ""
    @IBOutlet weak var breakfastView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
   override func viewDidLoad() {
       super.viewDidLoad()

    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
                view.addGestureRecognizer(tap)
            }
    
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(false, animated: animated)

     }
        
    @objc func dismissKeyboard() {
            
        view.endEditing(true)
    }
   

    func numberOfSections(in collectionView: UICollectionView) -> Int {
      return 1
  }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 3
//        return tipeMakanan.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       if let cell = breakfastView.dequeueReusableCell(withReuseIdentifier: "breakfastCell", for: indexPath) as? BreakfastCollectionViewCell
       {
        
        let makanan = tipeMakanan[indexPath.row]
//        cell.backgroundColor = .blue
        cell.breakfastFoodName.text = "\(makanan.breakfastFoodName)"
        cell.breakfastFoodCalories.text = "\(makanan.breakfastFoodCalories)"
        cell.breakfastImage.image = UIImage(named: "\(category)-\(indexPath.row + 1)")
        return cell }
        return BreakfastCollectionViewCell()
    }
    
    
       var tipeMakanan = [Makanan]()
       var category: String = ""
    
         func initMakanan(category: Category) {
         self.navigationItem.title = category.mealsType
        tipeMakanan = getSuggestionMenu(forCategoryTitle: category.mealsType)
            self.category = category.mealsType.lowercased()
    }

    func getSuggestionMenu(forCategoryTitle title:String) -> [Makanan] {
        switch title {
        case "Breakfast":
            return menuPagi
        case "Lunch":
            return menuSiang
        case "Dinner":
            return menuMalam
        default:
            return menuPagi
        }
    }
}

