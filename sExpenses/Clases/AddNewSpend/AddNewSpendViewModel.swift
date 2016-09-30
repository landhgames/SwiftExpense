//
//  AddNewSpendViewModel.swift
//  sExpenses
//
//  Created by Nacho on 9/25/16.
//  Copyright © 2016 LandhSoft™. All rights reserved.
//

import UIKit

class AddNewSpendViewModel: NSObject
{
    var gastoNombre : String!
    var precio      : Double = 0
    var categoria   : String!
    var moneda      : LGExpense.Currency!
    var modopago    : Int = 0
    var serviciosDeGasto = LGGastosModel()
    
    internal weak var delegate: AddNewSpendProtocol?
    
    func validarNombre() -> Bool {
        return self.gastoNombre.characters.count >= 2
    }
    
    func validarCantidad() -> Bool {
        return self.precio > 0
    }
    
    func didPressAdd()
    {
        if(!validarNombre())
        {
            delegate?.showError("Nombre Inválido")
            return
        }
        
        if(!validarCantidad())
        {
            delegate?.showError("Cantidad Inválida!")
        }
        
        agregarGasto()
        delegate?.dismissAddView()
    }
    
    func agregarGasto(){
        let nuevoGasto = LGExpense(title: self.gastoNombre, cat : self.categoria, price : self.precio, curr : self.moneda)
        serviciosDeGasto.guardarGasto(nuevoGasto)
    }

}

public protocol AddNewSpendProtocol: class {    
    func showError(string : String)
    func dismissAddView()
}
