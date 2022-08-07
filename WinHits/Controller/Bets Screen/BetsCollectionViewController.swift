//
//  BetsCollectionViewController.swift
//  WinHits
//
//  Created by Демид Стариков on 06.08.2022.
//

import UIKit

protocol BetsCollectionViewControllerDelegate: AnyObject {
    
    func arrayUpdate(newBet: Bet)
}

class BetsCollectionViewController: UICollectionViewController, BetsCollectionViewControllerDelegate {
    
    var betList = [
        Bet(betName: "Bet#1", amount: "100", bet: "", wtf: "0"),
        Bet(betName: "Bet#2", amount: "100", bet: "WIN", wtf: "0"),
        Bet(betName: "Bet#3", amount: "200", bet: "", wtf: "0"),
        Bet(betName: "Bet#4", amount: "100", bet: "LOSE", wtf: "0")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? NewBetSubVC else { return }
        destination.delegate = self
    }
    
    func arrayUpdate(newBet: Bet) {
        betList.append(newBet)
        collectionView.reloadData()
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
                
                if betList[indexPath.row].bet != " " {
                    if betList[indexPath.row].bet == "WIN" {
                        if betList[indexPath.row].wtf == "0" {
                            betList[indexPath.row].wtf = "1"
                            betList[indexPath.row].amount += " +"
                            betCell.detailBetResultLabel.textColor = .green
                            betCell.detailBetResultLabel.text = "WIN"
                        } else {
                            betList[indexPath.row].wtf = "1"
                            betCell.detailBetResultLabel.textColor = .green
                            betCell.detailBetResultLabel.text = "WIN"
                        }
                    } else { // if .bet == "LOSE"
                        if betList[indexPath.row].wtf == "0" {
                            betList[indexPath.row].wtf = "1"
                            betList[indexPath.row].amount += " -"
                            betCell.detailBetResultLabel.textColor = .red
                            betCell.detailBetResultLabel.text = "LOSE"
                        } else {
                            betList[indexPath.row].wtf = "1"
                            betCell.detailBetResultLabel.textColor = .red
                            betCell.detailBetResultLabel.text = "LOSE"
                        }
                    }
                } else {
                    if betList[indexPath.row].wtf == "0" {
                        betList[indexPath.row].wtf = "1"
                        betList[indexPath.row].betName = "Bet#\(indexPath.row + 1)"
                        betCell.betResultLabel.isHidden = true
                        betCell.detailBetResultLabel.isHidden = true
                        
                        if betList[indexPath.row].amount != "" {
                            betList[indexPath.row].amount += " +"
                        } else {
                            betList[indexPath.row].amount = "+/-"
                        }
                    }
                }
            
                    betCell.bets = betList[indexPath.row]
            
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
