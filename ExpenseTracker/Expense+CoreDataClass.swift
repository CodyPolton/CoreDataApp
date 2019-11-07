//
//  Expense+CoreDataClass.swift
//  ExpenseTracker
//
//  Created by Cody Polton on 05/11/2019.
//  Copyright © 2019 Cody Polton. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Expense)
public class Expense: NSManagedObject {
    var date: Date? {
        get{
            return rawDate as Date?
        }
        set{
            rawDate = newValue as Date?
        }
    }
    
    convenience init?(name: String?, amount: Double, date: Date?){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else{
            return nil
        }
        
        self.init(entity: Expense.entity(), insertInto: managedContext)
        
        self.name = name
        self.amount = amount
        self.date = date
    }
}
