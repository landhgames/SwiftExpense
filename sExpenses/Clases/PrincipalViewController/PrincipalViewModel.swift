//
//  PrincipalViewModel.swift
//  sExpenses
//
//  Created by Nacho on 9/17/16.
//  Copyright © 2016 LandhSoft™. All rights reserved.
//

import UIKit

class PrincipalViewModel: NSObject {
    
     /* The ViewModel which is a special type of model that represents the UI state of the application. It contains properties
     that detail the state of each and every UI control, for example the current text for a text field or whether a specific button is enabled.
     It also exposes the actions that the view is able to perform, for example button taps or gestures. */
    
    let         title:      String
    dynamic var isVisible:  Bool
    var         gastos:     NSArray
    
    init(listOfSpenditures: NSArray)
    {
        self.title = "Gastos"
        self.isVisible = false
        self.gastos = listOfSpenditures
        super.init()
    }
        
    func refresh()
    {
         self.gastos = LGGastosModel().dameGastos()
    }
    
    
}
