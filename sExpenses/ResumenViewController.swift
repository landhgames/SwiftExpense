//
//  ResumenViewController.swift
//  sExpenses
//
//  Created by Nacho on 9/29/16.
//  Copyright © 2016 LandhGames™. All rights reserved.
//

import UIKit

class ResumenViewController: UIViewController {

    @IBOutlet weak var gastosTotales: UILabel!
    var viewModel : ResumenViewModel!
    
    override init(nibName name : String?, bundle: NSBundle?){
        super.init(nibName: name, bundle: bundle)
        viewModel = ResumenViewModel()
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Cancel, target: self, action: #selector(AddNewSpendViewController.cancelPressed))
    }
    
    func cancelPressed(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bindViewModel()
    }
    
    func bindViewModel(){
        self.gastosTotales.text = self.viewModel.dameGastosTotales()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    
}
