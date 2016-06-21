//
//  ConfigurationVC.swift
//  sExpenses
//
//  Created by Nacho on 1/4/16.
//  Copyright © 2016 LandhGames™. All rights reserved.
//

import UIKit

class ConfigurationVC: UIViewController {

    @IBOutlet weak var theTableView : UITableView!
    
    var salidaEntrada : Array<LGEntradaSalida> = []
    var test : Array<String> = []
    
    override func viewDidLoad() {
        
        let a  = LGEntradaSalida()
        let b  = LGEntradaSalida()
        let c  = LGEntradaSalida()
        
        salidaEntrada.append(a)
        salidaEntrada.append(b)
        salidaEntrada.append(c)
        
        super.viewDidLoad()
        theTableView.registerNib(UINib(nibName: "InOutConfigurationTableViewCell", bundle: nil), forCellReuseIdentifier: "InOutConfigurationTableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func didTouchBackBtn(sender: UIBarButtonItem) {
        self.navigationController?.dismissViewControllerAnimated(false, completion: nil)
    }
    
    // Mark: - TableView Delegate
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            salidaEntrada.removeAtIndex(indexPath.row)
            theTableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return salidaEntrada.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell : InOutConfigurationTableViewCell = self.theTableView.dequeueReusableCellWithIdentifier("InOutConfigurationTableViewCell") as! InOutConfigurationTableViewCell
        //cell.layoutIfNeeded()
        
        //cell.segmentedControl.selectedSegmentIndex = 1
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return 140
    }


}
