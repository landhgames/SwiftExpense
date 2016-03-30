//
//  SummaryVCViewController.swift
//  sExpenses
//
//  Created by Nacho on 3/26/16.
//  Copyright © 2016 LandhGames™. All rights reserved.
//

import UIKit

class SummaryVC: UIViewController {

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
