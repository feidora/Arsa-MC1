//
//  CaloriesPopUpVC.swift
//  Another Nyoba MC1
//
//  Created by Zhafira Millenia on 10/04/20.
//  Copyright © 2020 Zhafira Millenia. All rights reserved.
//

import UIKit

class CaloriesPopUpVC: UIViewController {

  @IBAction func toMainPage(_ sender: UIStoryboardSegue) {
    }

    @IBAction func buttonAction(_ sender: Any) {
        
    }
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var labelCalories: UILabel!
    
    var nama = ""
    var calories: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelCalories.text = " \(calories) cal"
//        buttonOutlet.layer.cornerRadius = 70
//        buttonOutlet.clipsToBounds = true
        
     
    }
    
}

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
