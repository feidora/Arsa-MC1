//
//  PersonalDataVC.swift
//  Arsa MC1
//
//  Created by Zhafira Millenia on 14/04/20.
//  Copyright © 2020 Feidora Nadia Putri. All rights reserved.
//

import UIKit

class PersonalDataVC: UIViewController {
    
     @IBOutlet weak var continueButton: UIButton!
        @IBOutlet weak var nameLabel: UILabel!
        @IBOutlet weak var nameTextField: UITextField!
        @IBOutlet weak var heightWeightLabel: UILabel!
        @IBOutlet weak var heightTextField: UITextField!
        @IBOutlet weak var weightTextField: UITextField!
        @IBOutlet weak var ageLabel: UILabel!
        @IBOutlet weak var ageTextField: UITextField!
        
    

        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))

                        view.addGestureRecognizer(tap)
                    }

                
                    @objc func dismissKeyboard() {
                    
                        view.endEditing(true)
            }
    
     var convert = 0.0
     var namaField = ""
        
        @IBAction func continueButton(_ sender: Any) {
           
                namaField = nameTextField.text!
                let height1: Double? = Double(heightTextField.text!)
                let weight1: Double? = Double(weightTextField.text!)
                let age: Double? = Double(ageTextField.text!)

            
            convert = (Double((height1! * 6.25)) + (weight1! * 10.0) - (5.0 * age!) + 5.0) - 161.0

//            let passNama = storyboard?.instantiateViewController(withIdentifier: "ActivityVC") as! ActivityVC
//                passNama.calories = "\(self.convert)"

            performSegue(withIdentifier: "toActivites", sender: self)
            
//                present(passNama, animated: true, completion: nil)
            
        }
        
    //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if let destination = segue.destination as? CaloriesPopUpVC {
    //        destination.calories = "\(self.convert)"
    //
    //        }}
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               if let destination = segue.destination as? ActivityVC {
               destination.calories = "\(self.convert)"
               destination.nama = "\(self.namaField)"
               }}
     
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the Navigation Bar
       self.navigationController?.setNavigationBarHidden(true, animated: animated)
        self.navigationController?.navigationBar.tintColor = UIColor(red:0.89, green:0.46, blue:0.33, alpha:1.00)

    }
        
    }

    
    
