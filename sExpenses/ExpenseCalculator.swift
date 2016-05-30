//
//  ExpenseCalculator.swift
//  sExpenses
//
//  Created by Nacho on 3/30/16.
//  Copyright © 2016 LandhGames™. All rights reserved.
//

import UIKit

class ExpenseCalculator {//: NSObject {
    let mgr = CDManager()
    var expenses : Array<LGExpense> = []
    
    init(){
        self.expenses = mgr.retrieveSpenditures()
    }
    
    func calcSpendings(month : Int, year : Int) -> Double{
        var rv : Double = 0
        for e in expenses{
            rv += e.price
        }
        
        return rv
    }
    
    func calcSavings(month : Int, year : Int) -> Float{
        return 0
    }
    
    func calcTotalCreditCard(month : Int, year : Int) -> Double{
        var rv : Double = 0
        for e in expenses{
            if(e.paymentType !=  LGExpense.PaymentType.Cash){
                rv += e.price
            }
        }
        
        return rv
    }
}
