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
    
    var bets: Bet? {
        didSet {
            mainLabel.text = bets?.betName
            betResultLabel.text = "Bet result: "
            detailBetResultLabel.text = bets?.bet
            profitLabel.text = bets?.amount
            
            mainLabel.textColor = .white
            betResultLabel.textColor = .white
            profitLabel.textColor = .white
        }
    }
    
}
