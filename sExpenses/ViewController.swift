//
//  ViewController.swift
//  sExpenses
//
//  Created by Nacho on 1/4/16.
//  Copyright © 2016 LandhGames™. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AddSpendVCProtocol {
    
    let mgr = CDManager()
    
    @IBOutlet weak var tableView: UITableView!
    
    var expenses : Array<LGExpense> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerNib(UINib(nibName: "LGSpenderCellTableViewCell", bundle: nil), forCellReuseIdentifier: "SpenderCell")
        let rightAddBarButtonItem:UIBarButtonItem = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.Plain, target: self, action: "addTapped:")
        
        self.navigationItem.setRightBarButtonItems([rightAddBarButtonItem], animated: true)
        
        
        //self.saveCurrentSpenditures()
        //self.expenses.append(exp)
        
        self.getSavedSpendings()

    }
    
    func saveCurrentSpenditures(){
        //let exp = LGExpense(title: "Comida afuera", cat: "Restaurant", price: 99.99, curr: LGExpense.Currency.ars)
        //self.mgr.saveSpenditure(exp)
    }
    
    func getSavedSpendings(){
        //mgr.saveSpenditure(self.expenses[0])
        self.expenses = mgr.retrieveSpenditures()
        self.tableView.reloadData()
    }
    
    func addTapped (sender:UIButton) {
        print("add pressed")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Mark: - Something
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.expenses.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell : LGSpenderCellTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("SpenderCell") as! LGSpenderCellTableViewCell
        
        let exp = self.expenses[indexPath.row]
        
        cell.title.text = exp.title
        cell.type.text = exp.category
        cell.price.text = String(exp.price)
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return 80
    }
    

    @IBAction func didTouchConfig(sender: UIButton) {
        self.performSegueWithIdentifier("segue_configuration", sender: self)
    }

    @IBAction func didTouchAddSpend(sender: UIButton) {
        self.performSegueWithIdentifier("segue_addspend", sender: self)
    }
    
    @IBAction func didTouchSummary(sender: UIButton) {
        self.performSegueWithIdentifier("segue_summary", sender: self)
    }
    
    func didAddNewSpending(exp : LGExpense){
        self.expenses.append(exp)
        self.tableView.reloadData()
        self.mgr.saveSpenditure(exp)
        //self.mgr.saveSpenditures(self.expenses)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segue_addspend" {
            
            let nav = segue.destinationViewController as! UINavigationController
            let addSpend = nav.topViewController as! AddSpendVC
            
            addSpend.delegate = self
            
        }
        
        let backItem = UIBarButtonItem()
        backItem.title = "Something Else"
        navigationItem.backBarButtonItem = backItem
    }
    
}

