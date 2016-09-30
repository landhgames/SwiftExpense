//
//  Expenses+CoreDataProperties.swift
//  sExpenses
//
//  Created by Nacho on 2/11/16.
//  Copyright © 2016 LandhSoft™. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Expenses {

    @NSManaged var category: String?
    @NSManaged var currency: String?
    @NSManaged var price: NSNumber?
    @NSManaged var title: String?

}
