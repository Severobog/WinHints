//
//  BettingHintsVC.swift
//  WinHits
//
//  Created by Демид Стариков on 20.07.2022.
//

import UIKit


class BettingHintsVC: UICollectionViewController {
    
    let hintsArray = ["Understand the Sports Betting Language",
                      "Ignore Personal Biases",
                      "Bet On What You Know",
                      "Don’t Get Too High",
                      "Don’t Get Too Low, Either",
                      "Set a Budget",
                      "Research",
                      "Bet At the Right Time",
                      "Hint #9",
                      "Hint #10"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
       
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return hintsArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HintCell", for: indexPath) as! BettingHintsCVCell
    
        cell.CellLabel.text = hintsArray[indexPath.row]
    
        return cell
    }


}

extension BettingHintsVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 1
        let paddingWidth = 20 * (itemsPerRow + 1)
        let avaibaleWidth = collectionView.frame.width - paddingWidth
        let widthPerItems = avaibaleWidth / itemsPerRow
        return CGSize(width: widthPerItems, height: 70)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:  20, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
