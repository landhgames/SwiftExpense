//
//  Expenses.swift
//  sExpenses
//
//  Created by Nacho on 2/11/16.
//  Copyright © 2016 LandhSoft™. All rights reserved.
//

import Foundation
import CoreData

@objc(Expenses)
class Expenses: NSManagedObject {

    
    func saveCurrentSpenditures(){
        //let exp = LGExpense(title: "Comida afuera", cat: "Restaurant", price: 99.99, curr: LGExpense.Currency.ars)
        //self.mgr.saveSpenditure(exp)
    }
    
    func getSavedSpendings() -> NSArray{
        //mgr.saveSpenditure(self.expenses[0])
        //self.expenses = mgr.retrieveSpenditures()
        //self.tableView.reloadData()
        return []
    }
    
}
