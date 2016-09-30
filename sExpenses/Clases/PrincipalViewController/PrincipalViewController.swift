//
//  PrincipalViewController.swift
//  sExpenses
//
//  Created by Nacho on 9/17/16.
//  Copyright © 2016 LandhSoft™. All rights reserved.
//

import UIKit

class PrincipalViewController: UIViewController {
    
    var viewModel :         PrincipalViewModel!
    
    
    @IBOutlet weak var theTableView: UITableView!
    @IBOutlet weak var addNewButton: UIButton!
    
    //MARK: Inits
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init(viewModel:PrincipalViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "PrincipalViewController", bundle: nil)
        edgesForExtendedLayout = UIRectEdge()
    }
    
    //MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.theTableView.registerNib(UINib(nibName: "LGSpenderCellTableViewCell", bundle: nil), forCellReuseIdentifier: "SpenderCell")
        self.bindViewModel()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        refresh()
    }
    
    func refresh() {
        viewModel.refresh()
        theTableView.reloadData()
    }
    
    func bindViewModel()
    {
        self.title = self.viewModel.title;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Mark: - TableView Delegate
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.gastos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell : LGSpenderCellTableViewCell = self.theTableView.dequeueReusableCellWithIdentifier("SpenderCell") as! LGSpenderCellTableViewCell
        
        let exp = self.viewModel.gastos[indexPath.row] as! LGExpense
        
        cell.title.text = exp.title
        cell.type.text = exp.category
        cell.price.text = String(exp.price)
        
        return cell
        
    }    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return 80
    }
    
    // Mark: IBActions    
    @IBAction func didTappAddNew(sender: AnyObject)
    {
        let add = AddNewSpendViewController(nibName: "AddNewSpendViewController", bundle: nil)
        let nav = UINavigationController(rootViewController: add)
        presentViewController(nav, animated: true, completion: nil)
    }
    
    @IBAction func didTouchSummary(sender: UIButton) {
        let summary = ResumenViewController(nibName: "ResumenViewController", bundle: nil)
        let nav = UINavigationController(rootViewController: summary)
        presentViewController(nav, animated: true, completion: nil)
    }

    
}
