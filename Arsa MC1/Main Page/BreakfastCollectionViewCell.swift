//
//  BreakfastCollectionViewCell.swift
//  Arsa MC1
//
//  Created by Zhafira Millenia on 12/04/20.
//  Copyright © 2020 Feidora Nadia Putri. All rights reserved.
//

import UIKit

protocol MenuCellDelegate {
    func didAddMenuToMainPage(menu: String)
   
}

class BreakfastCollectionViewCell: UICollectionViewCell {
       
    var delegate: MenuCellDelegate?
    var tipeMakanan: Makanan!
    
        @IBOutlet weak var breakfastImage: UIImageView!
        @IBOutlet weak var breakfastFoodName: UILabel!
        @IBOutlet weak var breakfastFoodCalories: UILabel!
        
        @IBOutlet weak var buttonAdd: UIButton!
        @IBAction func buttonAdd(_ sender: Any) {
            delegate?.didAddMenuToMainPage(menu: tipeMakanan.breakfastFoodName)
            
        }
//
//            var tipeMakanan = [Makanan]()
//                  var category: String = ""
//
//                    func initMakanan(category: Category) {
//                    self.navigationItem.title = category.mealsType
//                   tipeMakanan = getSuggestionMenu(forCategoryTitle: category.mealsType)
//                       self.category = category.mealsType.lowercased()
//               }
//
//               func getSuggestionMenu(forCategoryTitle title:String) -> [Makanan] {
//                   switch title {
//                   case "Breakfast":
//                       return menuPagi
//                   case "Lunch":
//                       return menuSiang
//                   case "Dinner":
//                       return menuMalam
//                   default:
//                       return menuPagi
//                   }
//
    }
