//
//  NewBetSubVC.swift
//  WinHits
//
//  Created by Демид Стариков on 08.08.2022.
//

import UIKit

protocol NewBetSubVCDelegate {
    
    func passData(data: Bet)
}

class NewBetSubVC: UIViewController, NewBetSubVCDelegate {
    
    weak var delegate: BetsCollectionViewControllerDelegate?
    
    var mainData = Bet(betName: " ", amount: " ", bet: " ", wtf: "0")
    
    func passData(data: Bet) {
        mainData = data
        delegate?.arrayUpdate(newBet: mainData)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? NewBetVC else { return }
            destination.delegate = self
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
