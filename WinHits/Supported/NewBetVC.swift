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
    
    @IBAction func addNewBet(_ sender: Any) {
        let newBetName = betName.text!
        let newBetAmount = betAmount.text!
        let newBetBet = bet
        let newBetWtf = "0"
        delegate?.passData(newBetName: newBetName, newBetAmount: newBetAmount, newBetBet: newBetBet, newBetWtf: newBetWtf)

        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
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
