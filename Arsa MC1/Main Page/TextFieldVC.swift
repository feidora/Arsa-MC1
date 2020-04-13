//
//  TextFieldVC.swift
//  Another Nyoba MC1
//
//  Created by Zhafira Millenia on 11/04/20.
//  Copyright © 2020 Zhafira Millenia. All rights reserved.
//

import UIKit

class TextFieldVC: UIViewController {

    @IBOutlet weak var namaTF: UITextField!
    @IBOutlet weak var heightTF: UITextField!
    @IBOutlet weak var weightTF: UITextField!
    
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
       
            namaField = namaTF.text!
            let height1: Double? = Double(heightTF.text!)
            let weight1: Double? = Double(weightTF.text!)

        
        convert = (Double((height1! * 6.25)) + (weight1! * 10.0) - (5.0 * weight1!) + 5.0) * 1.2

        let passNama = storyboard?.instantiateViewController(withIdentifier: "CaloriesPopUp") as! CaloriesPopUpVC
                passNama.calories = "\(self.convert)"

        performSegue(withIdentifier: "keMainPage", sender: self)
        
            present(passNama, animated: true, completion: nil)
        
    }
    
//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destination = segue.destination as? CaloriesPopUpVC {
//        destination.calories = "\(self.convert)"
//
//        }}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if let destination = segue.destination as? CategoryMealVC {
           destination.calories = "\(self.convert)"
           destination.nama = "\(self.namaField)"
           }}
 
    
}
