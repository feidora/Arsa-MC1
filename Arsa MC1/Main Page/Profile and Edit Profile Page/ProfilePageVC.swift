//
//  ProfilePageVC.swift
//  Arsa MC1
//
//  Created by Feidora Nadia Putri on 13/04/20.
//  Copyright © 2020 Feidora Nadia Putri. All rights reserved.
//

import UIKit

class ProfilePageVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var changedName = String()
    var changedHeight = String()
    var changedWeight = String()
    var changedAge = String()
    
    let menus = ["Dak Jun", "Spicy Kimchi Ramen", "Pumpkin Soup"]
   
    // PP = Profile Page
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabelPP: UILabel!
    @IBOutlet weak var heightWeightLabelPP: UILabel!
    @IBOutlet weak var ageLabelPP: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        cell.textLabel?.text = menus[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToProfile(_ sender: UIStoryboardSegue) {}
}
