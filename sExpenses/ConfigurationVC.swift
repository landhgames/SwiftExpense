//
//  ConfigurationVC.swift
//  sExpenses
//
//  Created by Nacho on 1/4/16.
//  Copyright © 2016 LandhGames™. All rights reserved.
//

import UIKit

class ConfigurationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func didTouchBackBtn(sender: UIBarButtonItem) {
        self.navigationController?.dismissViewControllerAnimated(false, completion: nil)
    }

}
