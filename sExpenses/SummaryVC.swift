//
//  SummaryVCViewController.swift
//  sExpenses
//
//  Created by Nacho on 3/26/16.
//  Copyright © 2016 LandhGames™. All rights reserved.
//

import UIKit

class SummaryVC: UIViewController {

    
    @IBOutlet weak var MonthlyCurrentExpense: UILabel!
    @IBOutlet weak var lblCurrentSavings: UILabel!
    @IBOutlet weak var lblCreditCardTotal: UILabel!
    
    var expenseCalculator = ExpenseCalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI();
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
   
    @IBAction func didTouchBackBtn(sender: UIBarButtonItem) {
        self.navigationController?.dismissViewControllerAnimated(false, completion: nil)
    }
    
    func updateUI()
    {
        //self.expenseCalculator.
    }
}
