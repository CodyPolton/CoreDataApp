//
//  Expense+CoreDataProperties.swift
//  ExpenseTracker
//
//  Created by Cody Polton on 05/11/2019.
//  Copyright © 2019 Cody Polton. All rights reserved.
//
//

import Foundation
import CoreData


extension Expense {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }

    @NSManaged public var name: String?
    @NSManaged public var amount: Double
    @NSManaged public var rawDate: Date?

}
