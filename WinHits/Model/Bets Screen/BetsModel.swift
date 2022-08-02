//
//  BetsModel.swift
//  WinHits
//
//  Created by Демид Стариков on 24.07.2022.
//

import Foundation

struct Bet {
    var betName: String
    var amount:  String
    var bet: String
}

extension Bet {
    static func getBetList() -> [Bet] {
        [
            Bet(betName: "Bet#1", amount: "100", bet: ""),
            Bet(betName: "Bet#2", amount: "100", bet: "WIN"),
            Bet(betName: "Bet#3", amount: "100", bet: ""),
            Bet(betName: "Bet#4", amount: "100", bet: "LOSE")
        ]
    }
}




