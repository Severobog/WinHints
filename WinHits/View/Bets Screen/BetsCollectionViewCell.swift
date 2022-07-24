//
//  BetsView.swift
//  WinHits
//
//  Created by Демид Стариков on 24.07.2022.
//

import UIKit

class BetsCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var betResultLabel: UILabel!
    @IBOutlet weak var detailBetResultLabel: UILabel!
    @IBOutlet weak var profitLabel: UILabel!
    
    var bets: Bets? {
        didSet {
            mainLabel.text = bets?.betName
            betResultLabel.text = bets?.betResult
            detailBetResultLabel.text = bets?.detailBetResult
            profitLabel.text = bets?.profit
            
            mainLabel.textColor = .white
            betResultLabel.textColor = .white
            profitLabel.textColor = .white
        }
    }
    
}
