//
//  EditProfileVC.swift
//  Arsa MC1
//
//  Created by Feidora Nadia Putri on 13/04/20.
//  Copyright © 2020 Feidora Nadia Putri. All rights reserved.
//

import UIKit

class EditProfileVC: UIViewController {

    private var datePicker = UIDatePicker()
    
    // Outlet and Action
    @IBOutlet weak var imageEditProfile: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBAction func saveChangesButtonPressed(_ sender: Any) {
        if nameTextField.text != "Name" {
            if heightTextField.text != "165" {
                if weightTextField.text != "55" {
                    if ageTextField.text != "20" {
                        performSegue(withIdentifier: "editProfileSegue", sender: self)
                    }
                }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newName = segue.destination as! ProfilePageVC
        newName.changedName = nameTextField.text!
        let newHeight = segue.destination as! ProfilePageVC
        newHeight.changedHeight = heightTextField.text!
        let newWeight = segue.destination as! ProfilePageVC
        newWeight.changedWeight = weightTextField.text!
        let newAge = segue.destination as! ProfilePageVC
        newAge.changedAge = ageTextField.text!
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          // Hide the Navigation Bar
          self.navigationController?.navigationBar.tintColor = UIColor(red:0.89, green:0.46, blue:0.33, alpha:1.00)
            self.navigationController?.setNavigationBarHidden(false, animated: animated)

      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))

                    view.addGestureRecognizer(tap)
                }

            
                @objc func dismissKeyboard() {
                
                    view.endEditing(true)
        
        // Date PickerView
//        datePicker = UIDatePicker()
//        datePicker.datePickerMode = .date
//        datePicker.addTarget(self, action: #selector(EditProfileVC.dateChanged(datePicker:)), for: .valueChanged)
//
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(EditProfileVC.viewTapped(gestureRecognizer:)))
//
//        view.addGestureRecognizer(tapGesture)
//
//        ageTextField.inputView = datePicker
    }
    
//    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
//        view.endEditing(true)
//    }
//
//    @objc func dateChanged(datePicker: UIDatePicker) {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "mm/dd/yyyy"
//        ageTextField.text = dateFormatter.string(from: datePicker.date)
//        view.endEditing(true)
//    }
}
