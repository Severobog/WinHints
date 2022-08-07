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
    
    weak var delegate: NewBetSubVC?
    
    var bet = " "
    var newBet = Bet(betName: " ", amount: " ", bet: " ", wtf: "0")
    
    @IBAction func addNewBet(_ sender: Any) {
        newBet = Bet(betName: betName.text, amount: betAmount.text, bet: bet, wtf: "0")
        delegate?.passData(data: newBet)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func winButtonPressed(_ sender: UIButton) {
        bet = "WIN"
    }
    
    @IBAction func loseButtonPressed(_ sender: UIButton) {
        bet = "LOSE"
    }
    
   
    
}
