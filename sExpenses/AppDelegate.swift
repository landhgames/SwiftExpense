//
//  AppDelegate.swift
//  sExpenses
//
//  Created by Nacho on 1/4/16.
//  Copyright © 2016 LandhSoft™. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    var navigationController: UINavigationController!
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        navigationController = UINavigationController()
        navigationController.navigationBar.barTintColor = UIColor.darkGrayColor()
        navigationController.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        
        
        let listaDeGastos = LGGastosModel().dameGastos()                    // Service andentro del model
        let viewModel = PrincipalViewModel(listOfSpenditures:listaDeGastos) // se inicializa el viewModel
        let viewController = PrincipalViewController(viewModel:viewModel)   // se inicializa el ViewController
        navigationController.pushViewController(viewController, animated: false)
        
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
        
        return true

    }    
}

