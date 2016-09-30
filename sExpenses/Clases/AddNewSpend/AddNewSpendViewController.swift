//
//  AddNewSpendViewController.swift
//  sExpenses
//
//  Created by Nacho on 9/25/16.
//  Copyright © 2016 LandhSoft™. All rights reserved.
//

import UIKit

class AddNewSpendViewController: UIViewController,AddNewSpendProtocol {
    
    @IBOutlet weak var txtGasto: UITextField!
    @IBOutlet weak var txtPrecio: UITextField!
    @IBOutlet weak var btnAgregar: UIButton!
    @IBOutlet weak var btnCategory: UIButton!
    
    var viewModel : AddNewSpendViewModel!
    var categories = ["Personal domestico", "Pago Servicios/Impuestos", "Comida hecha",  "Insumos música", "Clase de Música", "Taxi",  "Restaurant", "Chino/Super", "Cancel"]
    
    override init(nibName name: String?, bundle: NSBundle?) {
        super.init(nibName: name, bundle: bundle)
        viewModel = AddNewSpendViewModel()
        viewModel.delegate = self
        navigationItem.title = "Agregar"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Cancel, target: self, action: #selector(AddNewSpendViewController.cancelPressed))
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cancelPressed(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI(){
        let backButton = UIBarButtonItem(title: "Atrás", style:.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        
        btnAgregar.layer.cornerRadius = 9
        btnAgregar.layer.borderColor = UIColor.blackColor().CGColor

    }
    
    @IBAction func didTouchActionSheet(sender: AnyObject) {
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .ActionSheet)
        
        for e in self.categories{
            let newCateogy = UIAlertAction(title: e, style: .Default, handler: {
                (alert: UIAlertAction!) -> Void in
                
            })
            optionMenu.addAction(newCateogy)
        }
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func showError(errString : String){
        let alert = UIAlertController(title: "Alert", message:errString, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func dismissAddView(){
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func didPressCategory(sender: UIButton)
    {
    }
    
    @IBAction func addNewSpending(sender: UIButton) {
        self.viewModel.gastoNombre = self.txtGasto.text
        self.viewModel.precio = Double(self.txtPrecio.text!)!
        self.viewModel.categoria = "Restaurant"
        self.viewModel.moneda = LGExpense.Currency.ars
        self.viewModel.didPressAdd()        
    }
}
