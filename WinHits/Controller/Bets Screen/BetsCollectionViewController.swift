//
//  BetsCollectionViewController.swift
//  WinHits
//
//  Created by Демид Стариков on 06.08.2022.
//

import UIKit
import CoreData

protocol BetsCollectionViewControllerDelegate: AnyObject {
    
    func arrayUpdate(newBetName: String, newBetAmount: String, newBetBet: String, newBetWtf: String)
}

class BetsCollectionViewController: UICollectionViewController, BetsCollectionViewControllerDelegate {
    
    struct Constants {
        static let entity = "NewBet"
        static let sortName = "name"
        static let cellName = "BetsCell"
    }
    
    var fetchResultController: NSFetchedResultsController<NSFetchRequestResult> = {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: Constants.entity)
        let sortDesriptor = NSSortDescriptor(key: Constants.sortName, ascending:  true)
        fetchRequest.sortDescriptors = [sortDesriptor]
        let fetchResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: CoreDataManager.instance.context, sectionNameKeyPath: nil, cacheName: nil)
        
        return fetchResultController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "NewBet")
        
        do {
            try fetchResultController.performFetch()
        } catch {
             print(error)
        }
        
        //Удаление ВСЕХ данных в CoreData
//        do {
//            let results = try CoreDataManager.instance.context.fetch(fetchRequest)
//            for result in results as! [NSManagedObject] {
//                CoreDataManager.instance.context.delete(result)
//            }
//        } catch {
//            print(error)
//        }
//        CoreDataManager.instance.saveContext()

    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? NewBetSubVC else { return }
        destination.delegate = self
    }
    
    func arrayUpdate(newBetName: String, newBetAmount: String, newBetBet: String, newBetWtf: String) {
        
        let newBetObj = NewBet()
        
        newBetObj.name = newBetName
        newBetObj.amount = newBetAmount
        newBetObj.bet = newBetBet
        newBetObj.wtf = newBetWtf
        
        CoreDataManager.instance.saveContext()
        
        collectionView.reloadData()
        do {
            try fetchResultController.performFetch()
        } catch {
            print(error)
        }
    }
    
  
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return fetchResultController.sections?.count ?? 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        if let sections = fetchResultController.sections {
            return sections[section].numberOfObjects
        } else {
            return 0
        }
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let betCell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.cellName, for: indexPath) as? BetsCollectionViewCell {
            
            betCell.backgroundColor = UIColor(red: 0.159, green: 0.522, blue: 0.733, alpha: 1)
            
            let newBet = fetchResultController.object(at: indexPath) as! NewBet
                
                if newBet.bet != " " {
                    if newBet.bet == "WIN" {
                        if newBet.wtf == "0" {
                            newBet.wtf = "1"
                            newBet.amount! += " +"
                            betCell.detailBetResultLabel.textColor = .green
                            betCell.detailBetResultLabel.text = "WIN"
                        } else {
                            betCell.detailBetResultLabel.textColor = .green
                            betCell.detailBetResultLabel.text = "WIN"
                        }
                    } else { // if .bet == "LOSE"
                        if newBet.wtf == "0" {
                            newBet.wtf = "1"
                            newBet.amount! += " -"
                            betCell.detailBetResultLabel.textColor = .red
                            betCell.detailBetResultLabel.text = "LOSE"
                        } else {
                            betCell.detailBetResultLabel.textColor = .red
                            betCell.detailBetResultLabel.text = "LOSE"
                        }
                    }
                } else {
                    if newBet.wtf == "0" {
                        newBet.wtf = "1"
                        newBet.name = "Blank Bet"
                        betCell.betResultLabel.isHidden = true
                        betCell.detailBetResultLabel.isHidden = true
                        
                        if newBet.amount != "" {
                            newBet.amount! += " +"
                        }
                    }
                }
            
                    betCell.bets = newBet
            
                return betCell 
            }
        return UICollectionViewCell()
        
    }

}

extension BetsCollectionViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 1
        let paddingWidth = itemsPerRow + 1
        let avaibaleWidth = collectionView.frame.width - paddingWidth
        let widthPerItems = avaibaleWidth / itemsPerRow
        
        return CGSize(width: widthPerItems - 20, height: collectionView.frame.width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top:  20, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 20
    }
}
