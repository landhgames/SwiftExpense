//
//  LGExpense.swift
//  sExpenses
//
//  Created by Nacho on 1/5/16.
//  Copyright © 2016 LandhSoft™. All rights reserved.
//

import UIKit


class LGExpense: NSObject {
    
    enum PaymentType{
        case Visa
        case Amex
        case Mastercard
        case VisaCitibank
        case Cash
    }

    
    enum Currency{
        case ars
        case usd
        case euro
        case yen
        case uyu
        case bru
    }

    
    var title :     String!
    var category :  String!
    var price :     Double!
    var fecha :     NSDate!
    var currency : Currency!
    var paymentType : PaymentType!
    
    override init(){
        super.init()
    }
    
    init(title : String, cat : String, price : Double, curr : Currency) {
        self.title = title
        self.category = cat
        self.price = price
        self.currency = curr
        self.fecha = NSDate()
    }
    
    
    
    
}
