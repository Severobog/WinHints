//
//  ViewController.swift
//  WinHits
//
//  Created by Демид Стариков on 24.07.2022.
//

import UIKit

class BetsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var betsArray: [Bets] = {
        var blankBets = Bets(betName: "Bet #1",
                             betResult: "Bet result:",
                             detailBetResult: "",
                             profit: "100",
                             bet: "WIN")
        
        var blankBets2 = Bets(betName: "Bet #2",
                              betResult: "Bet result:",
                              detailBetResult: "",
                              profit: "300",
                              bet: "")
        return [blankBets, blankBets2]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
}

extension BetsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        betsArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let betCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BetsCell", for: indexPath) as? BetsCollectionViewCell {
            
            betCell.backgroundColor = UIColor(red: 0.159, green: 0.522, blue: 0.733, alpha: 1)
            
            if betsArray[indexPath.row].bet != "" {
                if betsArray[indexPath.row].bet == "WIN" {
                    betsArray[indexPath.row].detailBetResult = "WIN"
                    betsArray[indexPath.row].profit += "+"
                    betCell.detailBetResultLabel.textColor = .green
                } else if betsArray[indexPath.row].bet == "LOSE" {
                    betsArray[indexPath.row].detailBetResult = "LOSE"
                    betsArray[indexPath.row].profit += "-"
                    betCell.detailBetResultLabel.textColor = .red
                }
            } else {
                betCell.detailBetResultLabel.isHidden = true
                betCell.betResultLabel.isHidden = true
                betsArray[indexPath.row].profit += "+"
            }
            
            betCell.bets = betsArray[indexPath.row]
            
            return betCell
        }
        
        return UICollectionViewCell()
            
    }
    
    
}

extension BetsViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 1
        let paddingWidth = itemsPerRow + 1
        let avaibaleWidth = collectionView.frame.width - paddingWidth
        let widthPerItems = avaibaleWidth / itemsPerRow
        return CGSize(width: widthPerItems, height: 90)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:  0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
}
