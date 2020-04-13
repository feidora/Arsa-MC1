//
//  ActivityVC.swift
//  Arsa MC1
//
//  Created by Zhafira Millenia on 14/04/20.
//  Copyright © 2020 Feidora Nadia Putri. All rights reserved.
//

import UIKit

class ActivityVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var calories = ""
    var nama = ""
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "activitiesCell"/*identifier*/, for: indexPath) as! ActivitiesTableViewCell
        let activity = activities[indexPath.row]
        let cellColor = cellColors[indexPath.row]
        cell.textLabel?.text = activity.activityName
        cell.detailTextLabel?.text = activity.activityDesc
        cell.backgroundColor = cellColor
        return cell
    }
    
    struct activity {
        var activityName = String()
        var activityDesc = String()
    }
    let cellColors = [
        UIColor(red: 0.72, green: 0.42, blue: 0.24, alpha: 0.50),
        UIColor(red: 0.67, green: 0.80, blue: 0.79, alpha: 0.50),
        UIColor(red: 0.64, green: 0.61, blue: 0.34, alpha: 0.50),
        UIColor(red: 0.93, green: 0.78, blue: 0.37, alpha: 0.50)
    ]
    
    let activities = [
        activity(activityName: "Sedentary", activityDesc: "Daily activities require minimal effort such as resting, desk working or driving"),
        activity(activityName: "Low Active", activityDesc: "Daily activities require some effort such as periods of standing, housework or some light exercise"),
        activity(activityName: "Active", activityDesc: "Daily activities require reasonable effort such as standing, physical work or regular moderate exercise"),
        activity(activityName: "Very Active", activityDesc: "Daily activities require intense physical effort such as construction work or regular vigorous exercise")
]
    @IBOutlet weak var activitiesTableView: UITableView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        caloriesLabel.isHidden = true
        nameLabel.isHidden = true
        caloriesLabel.text = calories
        nameLabel.text = nama
        activitiesTableView.delegate = self
        activitiesTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
     
                
    //                present(passNama, animated: true, completion: nil)
                
            
            
        //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        if let destination = segue.destination as? CaloriesPopUpVC {
        //        destination.calories = "\(self.convert)"
        //
        //        }}
            
    @IBAction func continueToAllergies(_ sender: Any) {
        
         performSegue(withIdentifier: "toAllergies", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                   if let destination = segue.destination as? AllergiesVC {
                   destination.calories = "\(self.calories)"
                   destination.nama = "\(self.nama)"
                   }}
         
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
