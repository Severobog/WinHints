//
//  BetMO+CoreDataProperties.swift
//  
//
//  Created by Демид Стариков on 08.08.2022.
//
//

import Foundation
import CoreData


extension BetMO {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BetMO> {
        return NSFetchRequest<BetMO>(entityName: "BetMO")
    }

    @NSManaged public var betName: String?
    @NSManaged public var amount: String?
    @NSManaged public var bet: String?
    @NSManaged public var wtf: String?
    
    var persistentContainer: NSPersistentContainer = {
          let container = NSPersistentContainer(name: "SavingLearn")
          container.loadPersistentStores(completionHandler: { (storeDescription, error) in
              if let error = error as NSError? {
                  fatalError("Unresolved error \(error), \(error.userInfo)")
              }
          })
          return container
      }()
    
    var context: NSManagedObjectContext = {
        return persistentContainer.viewContext
      }()
    
    func saveContext () {
          if context.hasChanges {
              do {
                  try context.save()
              } catch {
                context.rollback()
                  let nserror = error as NSError
                  fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
              }
          }
      }
}
