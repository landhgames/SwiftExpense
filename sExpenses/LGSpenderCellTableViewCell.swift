//
//  LGSpenderCellTableViewCell.swift
//  sExpenses
//
//  Created by Nacho on 1/4/16.
//  Copyright © 2016 LandhGames™. All rights reserved.
//

import UIKit

class LGSpenderCellTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var price: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
