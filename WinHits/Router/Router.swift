//
//  Router.swift
//  WinHits
//
//  Created by Демид Стариков on 26.07.2022.
//

import Moya

enum Router {
    
    //MARK: Bets screen
    
    case showBetInfo(name: String,
                 betResult: String, // print "Bet result: " or " "
                 detailbetResult: String, // print "WIN", "LOSE" or " ", after "Bet result"
                 profit: Int,
                 bet: String)
    
    case newBet(name: String,
                amount: Int,
                betOdds: Int,
                bet: String) // "WIN", "LOSE" or ""
    
    //MARK: Betting Hints screen
    
    case bettingHintsList(name: String)
    
    case showBettingHint(name: String,
                         hintText: String)
    
}
