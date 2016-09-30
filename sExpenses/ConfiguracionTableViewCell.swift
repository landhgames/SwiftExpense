//
//  ConfiguracionTableViewCell.swift
//  sExpenses
//
//  Created by Nacho on 6/2/16.
//  Copyright © 2016 LandhGames™. All rights reserved.
//

import UIKit

class ConfiguracionTableViewCell: UITableViewCell {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var lblPeriodicidad: UIButton!
    @IBOutlet weak var txtMonto: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

//    override func setSelected(selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//        
//    }
    
}
