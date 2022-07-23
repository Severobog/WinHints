//
//  BetsCVC.swift
//  WinHits
//
//  Created by Демид Стариков on 20.07.2022.
//

import UIKit


class BetsCVC: UICollectionViewController {
    
    var betsArray = ["Bet #1",
                     "Bet #2",
                     "Bet #3",
                     "Bet #4"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return betsArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BetsCVCell", for: indexPath) as! BetsCVCell
    
        // Configure the cell
        cell.backgroundColor = UIColor(red: 0.159, green: 0.522, blue: 0.733, alpha: 1)
        cell.BetMainLabel.text = "\(betsArray[indexPath.row])"
        cell.BetResultLabel.text = "Bet result: "
        cell.BetProfitLabel.text = "\(Int.random(in: -5000...5000))" // random profit 
        if Int(cell.BetProfitLabel.text!)! < 0 {
            cell.BetDetailResultLabel.textColor = .red
            cell.BetDetailResultLabel.text = "LOSE"
        } else {
            cell.BetDetailResultLabel.textColor = .green
            cell.BetDetailResultLabel.text = "WIN"
        }
    
        return cell
    }

}


extension BetsCVC: UICollectionViewDelegateFlowLayout {
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

extension UICollectionView {
    @IBInspectable var backgroundImage: UIImage? {
        get {
            return nil
        }
        set {
            backgroundView = UIImageView(image: newValue)
        }
    }
}
