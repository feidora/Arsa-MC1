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
    }
