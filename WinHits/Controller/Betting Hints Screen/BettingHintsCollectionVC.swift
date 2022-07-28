//
//  BettingHintsVC.swift
//  WinHits
//
//  Created by Демид Стариков on 20.07.2022.
//

import UIKit


class BettingHintsVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
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
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bgimage")
        self.view.insertSubview(backgroundImage, at: 0)
    }

}

extension BettingHintsVC: UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        hintsArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HintCell", for: indexPath) as? BettingHintsCVCell {
        
            cell.backgroundColor = UIColor(red: 0.159, green: 0.522, blue: 0.733, alpha: 1)
            cell.CellLabel.text = hintsArray[indexPath.row]
    
            return cell
        }
    
        return UICollectionViewCell()
        
    }


}

extension BettingHintsVC: UICollectionViewDelegateFlowLayout {
    
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


