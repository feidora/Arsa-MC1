//
//  CaloriesPopUpVC.swift
//  Arsa MC1
//
//  Created by Zhafira Millenia on 12/04/20.
//  Copyright © 2020 Feidora Nadia Putri. All rights reserved.
//

import UIKit

class CaloriesPopUpVC: UIViewController {

       
        @IBOutlet weak var buttonOutlet: UIButton!
        @IBOutlet weak var labelCalories: UILabel!
        
        var calories: String = ""
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            labelCalories.text = calories
            
         
        }
        
     @IBAction func buttonAction(_ sender: Any) {}
    
    
    }


//border radius button

    @IBDesignable extension UIButton {

        @IBInspectable var borderWidth: CGFloat {
            set {
                layer.borderWidth = newValue
            }
            get {
                return layer.borderWidth
            }
        }

        @IBInspectable var cornerRadius: CGFloat {
            set {
                layer.cornerRadius = newValue
            }
            get {
                return layer.cornerRadius
            }
        }

        @IBInspectable var borderColor: UIColor? {
            set {
                guard let uiColor = newValue else { return }
                layer.borderColor = uiColor.cgColor
            }
            get {
                guard let color = layer.borderColor else { return nil }
                return UIColor(cgColor: color)
            }
        }
    }
