//
//  ActivitiesTableViewCell.swift
//  Arsa MC1
//
//  Created by Zhafira Millenia on 14/04/20.
//  Copyright © 2020 Feidora Nadia Putri. All rights reserved.
//

import UIKit

class ActivitiesTableViewCell: UITableViewCell {
    
    let activitieslabel = ["Daily activities require minimal effort such as resting, desk work or driving.", "Daily activities require some effort such as periods of standing, housework or some light exercise.", "Daily activities require reasonable effort such as standing, physical work or regular moderate exercise.", "Daily activities require intense physical effort such as constructions work or regular viforous exercise."]

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
