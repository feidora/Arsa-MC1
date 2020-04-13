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
        if nameTextField.text != "" {
            if heightTextField.text != "" {
                if weightTextField.text != "" {
                    if ageTextField.text != "" {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Date PickerView
        datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(EditProfileVC.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(EditProfileVC.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        ageTextField.inputView = datePicker
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }

    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "mm/dd/yyyy"
        ageTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
}
