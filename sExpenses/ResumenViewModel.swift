//
//  ResumenViewModel.swift
//  sExpenses
//
//  Created by Nacho on 9/29/16.
//  Copyright © 2016 LandhGames™. All rights reserved.
//

import UIKit

class ResumenViewModel: NSObject {

    func calcularSumaTotal(gastos : [LGExpense]) -> Double
    {
        var rv : Double = 0
        for(_,gasto) in gastos.enumerate(){
            rv = rv + gasto.price
        }
        
        return rv
    }
    
    func dameGastosTotales() -> String{
        let gastosTotales = LGGastosModel().dameGastos()
        let total = calcularSumaTotal(gastosTotales)
        return "$\(total)"
    }
    
}
