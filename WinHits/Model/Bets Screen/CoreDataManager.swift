//
//  CoreDataManager.swift
//  WinHits
//
//  Created by Демид Стариков on 14.08.2022.
//

import Foundation
import CoreData

class CoreDataManager {
    static let instance = CoreDataManager()
    
    private init() {}
    
    lazy var context: NSManagedObjectContext = {
        persistentContainer.viewContext
    }()
    
    //Описание сущности
    func entityForName(entityName: String) -> NSEntityDescription {
        return NSEntityDescription.entity(forEntityName: entityName, in: context)! 
    }
    
    
    
    
    // MARK: - Core Data stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "Model")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("fucking error \(nserror) and \(nserror.userInfo)")
            }
        }
    }
}
