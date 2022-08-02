//
//  ViewController.swift
//  WinHits
//
//  Created by Демид Стариков on 24.07.2022.
//

import UIKit

class BetsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var betList = Bet.getBetList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bgimage")
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
}

extension BetsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        betList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let betCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BetsCell", for: indexPath) as? BetsCollectionViewCell {
            
                betCell.backgroundColor = UIColor(red: 0.159, green: 0.522, blue: 0.733, alpha: 1)
                
                if betList[indexPath.row].bet != "" {
                    if betList[indexPath.row].bet == "WIN" {
                        betList[indexPath.row].amount += " +"
                        betCell.detailBetResultLabel.textColor = .green
                        betCell.detailBetResultLabel.text = "WIN"
                    } else { // if .bet == "LOSE"
                        betList[indexPath.row].amount += " -"
                        betCell.detailBetResultLabel.textColor = .red
                        betCell.detailBetResultLabel.text = "LOSE"
                    }
                } else {
                    betCell.betResultLabel.isHidden = true
                    betCell.detailBetResultLabel.isHidden = true
                    betList[indexPath.row].amount += " +"
                }
            
                betCell.bets = betList[indexPath.row]
            
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
        return CGSize(width: widthPerItems, height: collectionView.frame.width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:  20, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
}
