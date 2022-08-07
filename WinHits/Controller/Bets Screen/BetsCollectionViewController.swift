//
//  BetsCollectionViewController.swift
//  WinHits
//
//  Created by Демид Стариков on 06.08.2022.
//

import UIKit

class BetsCollectionViewController: UICollectionViewController {
    
    var betList = [
        Bet(betName: "Bet#1", amount: "100", bet: ""),
        Bet(betName: "Bet#1", amount: "100", bet: ""),
        Bet(betName: "Bet#3", amount: "200", bet: ""),
        Bet(betName: "Bet#4", amount: "100", bet: "LOSE")
    ]
    
    var profitList = [Double]()
    var shittyList = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testNavController: UINavigationController = UINavigationController.init()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        let collectionView: UICollectionViewController = UICollectionViewController.init(collectionViewLayout: layout)
        testNavController.pushViewController(collectionView, animated: true)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return betList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let betCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BetsCell", for: indexPath) as? BetsCollectionViewCell {
            
                betCell.backgroundColor = UIColor(red: 0.159, green: 0.522, blue: 0.733, alpha: 1)
                
                if betList[indexPath.row].bet != "" {
                    if betList[indexPath.row].bet == "WIN" {
                        profitList.append(Double(betList[indexPath.row].amount)!)
                        shittyList.append("shit")
                        betList[indexPath.row].amount += " +"
                        betCell.detailBetResultLabel.textColor = .green
                        betCell.detailBetResultLabel.text = "WIN"
                    } else { // if .bet == "LOSE"
                        profitList.append(Double(betList[indexPath.row].amount)! * -1)
                        shittyList.append("shit")
                        betList[indexPath.row].amount += " -"
                        betCell.detailBetResultLabel.textColor = .red
                        betCell.detailBetResultLabel.text = "LOSE"
                    }
                } else {
                    profitList.append(Double(betList[indexPath.row].amount)!)
                    shittyList.append("shit")
                    betCell.betResultLabel.isHidden = true
                    betCell.detailBetResultLabel.isHidden = true
                    betList[indexPath.row].amount += " +"
                }
            
                    betCell.bets = betList[indexPath.row]
                print(shittyList)
                print(profitList)

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
        
        return CGSize(width: widthPerItems, height: collectionView.frame.width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top:  20, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 20
    }
}
