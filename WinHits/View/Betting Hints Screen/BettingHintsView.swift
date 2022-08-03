//
//  BettingHintsView.swift
//  WinHits
//
//  Created by Демид Стариков on 24.07.2022.
//

import UIKit

class BettingHintsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var hintLabel: UILabel!
    
    var hints: Hint? {
        didSet {
            hintLabel.text = hints?.hintLabel
            hintLabel.textColor = .white
        }
    }
}
