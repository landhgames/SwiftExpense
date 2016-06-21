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
    var expenses :      Array<LGExpense> = []
    var totalIncome :   Array<LGExpense> = []
    
    var balance : Double = 0
    
    init(){
        self.expenses = mgr.retrieveSpenditures()
        self.calcIncome()
        self.calcOutcome()
    }
    
    func retrieveSpenditures(){
        
    }
    
    func calcSpendings(month : Int, year : Int) -> Double{
        var rv : Double = 0
        for e in expenses{
            rv += e.price
        }
        
        return rv
    }
    
//    func calcSavings(month : Int, year : Int) -> Float{
//        return 0
//    }
    
//    func calcTotalCreditCard(month : Int, year : Int) -> Double{
//        var rv : Double = 0
//        for e in expenses{
//            if(e.paymentType !=  LGExpense.PaymentType.Cash){
//                rv += e.price
//            }
//        }
//        
//        return rv
//    }
    
    func calcIncome(){
        for exp : LGExpense in self.totalIncome{
            balance += exp.price
        }
    }
    
    func calcOutcome(){
        for exp : LGExpense in self.expenses {
            balance -= exp.price
        }
    }
    
    func getOutcome(mes : String)->Double{
        return self.balance
    }
}
