//
//  NewBet+CoreDataClass.swift
//  WinHits
//
//  Created by Демид Стариков on 14.08.2022.
//
//

import Foundation
import CoreData

@objc(NewBet)
public class NewBet: NSManagedObject {
    convenience init() {
        self.init(entity: CoreDataManager.instance.entityForName(entityName: "NewBet"), insertInto: CoreDataManager.instance.context)
    }
}
