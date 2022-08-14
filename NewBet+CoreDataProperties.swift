//
//  NewBet+CoreDataProperties.swift
//  WinHits
//
//  Created by Демид Стариков on 14.08.2022.
//
//

import Foundation
import CoreData


extension NewBet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NewBet> {
        return NSFetchRequest<NewBet>(entityName: "NewBet")
    }

    @NSManaged public var name: String?
    @NSManaged public var amount: String?
    @NSManaged public var bet: String?
    @NSManaged public var wtf: String?

}

extension NewBet : Identifiable {

}
