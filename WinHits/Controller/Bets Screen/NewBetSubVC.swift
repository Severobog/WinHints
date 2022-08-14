//
//  NewBetSubVC.swift
//  WinHits
//
//  Created by Демид Стариков on 08.08.2022.
//

import UIKit

protocol NewBetSubVCDelegate {
    
    func passData(newBetName: String, newBetAmount: String, newBetBet: String, newBetWtf: String)
}

class NewBetSubVC: UIViewController, NewBetSubVCDelegate {
    
    weak var delegate: BetsCollectionViewControllerDelegate?
    
    func passData(newBetName: String, newBetAmount: String, newBetBet: String, newBetWtf: String) {
        delegate?.arrayUpdate(newBetName: newBetName, newBetAmount: newBetAmount, newBetBet: newBetBet, newBetWtf: newBetWtf)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? NewBetVC else { return }
            destination.delegate = self
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
