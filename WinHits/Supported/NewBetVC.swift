//
//  NewBetVC.swift
//  WinHits
//
//  Created by Демид Стариков on 02.08.2022.
//

import UIKit

class NewBetVC: UIViewController {

    @IBOutlet weak var betName: UITextField!
    @IBOutlet weak var betAmount: UITextField!
    @IBOutlet weak var betOdds: UITextField!
    
    @IBOutlet weak var loseButton: UIButton!
    @IBOutlet weak var winButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var bet = ""
    var newBet = Bet(betName: "", amount: "", bet: "")
    
    @IBAction func winButtonPressed(_ sender: UIButton) {
        bet = "WIN"
    }
    
    @IBAction func loseButtonPressed(_ sender: UIButton) {
        bet = "LOSE"
    }
    
    @IBAction func addNewBet(_ sender: Any) {
        newBet = Bet(betName: betName.text, amount: betAmount.text, bet: bet)
        let destinationVC = BetsViewController()
        destinationVC.betList.append(newBet)
        let indexPath = IndexPath(row: destinationVC.betList.count - 1, section: 0)
//        destinationVC.collectionView.insertItems(at: [indexPath])
    }
 

    
}
