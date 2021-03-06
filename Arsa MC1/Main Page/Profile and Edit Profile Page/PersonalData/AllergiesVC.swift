//
//  AllergiesVC.swift
//  Arsa MC1
//
//  Created by Zhafira Millenia on 14/04/20.
//  Copyright © 2020 Feidora Nadia Putri. All rights reserved.
//

import UIKit



class AllergiesVC: UIViewController, UITableViewDataSource,UITableViewDelegate {

    let allergies = [
        allergy(allergyName: "Peanut"),
        allergy(allergyName: "Dairy"),
        allergy(allergyName: "Egg"),
        allergy(allergyName: "Seafood"),
        allergy(allergyName: "Wheat"),
        allergy(allergyName: "None"),
        allergy(allergyName: "Others")
    ]
    
    @IBOutlet weak var allergiesTableView: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allergiesCell"/*identifier*/, for: indexPath)
        let allergy = allergies[indexPath.row]
        let cellColor = cellColors[indexPath.row]
        cell.textLabel?.text = allergy.allergyName
        cell.backgroundColor = cellColor
        return cell
       
    }
    struct allergy {
    var allergyName = String()
    }
    
    let cellColors = [
        UIColor(red: 1, green: 0.82, blue: 0.62, alpha: 0.6),
        UIColor(red: 1, green: 0.82, blue: 0.62, alpha: 0.6),
        UIColor(red: 1, green: 0.82, blue: 0.62, alpha: 0.6),
        UIColor(red: 1, green: 0.82, blue: 0.62, alpha: 0.6),
        UIColor(red: 1, green: 0.82, blue: 0.62, alpha: 0.6),
        UIColor(red: 1, green: 0.82, blue: 0.62, alpha: 0.6),
        UIColor(red: 1, green: 0.82, blue: 0.62, alpha: 0.6),
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allergies.count
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        caloriesLabel.isHidden = true
        nameLabel.isHidden = true
        caloriesLabel.text = calories
        nameLabel.text = nama
        allergiesTableView.delegate = self
        allergiesTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func continueToPopUp(_ sender: Any) {
          

        let passNama = storyboard?.instantiateViewController(withIdentifier: "CaloriesPopUp") as! CaloriesPopUpVC
                          passNama.calories = "\(self.calories)"

                  performSegue(withIdentifier: "mainPage", sender: self)
                  
                      present(passNama, animated: true, completion: nil)
      }
      
    var calories = ""
    var nama = ""
    
 
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               if let destination = segue.destination as? CategoryMealVC {
               destination.calories = "\(self.calories)"
               destination.nama = "\(self.nama)"
               }}
     
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the Navigation Bar
       self.navigationController?.setNavigationBarHidden(false, animated: animated)
     
    }
        
    
}
