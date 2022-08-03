//
//  BettingHintsModel.swift
//  WinHits
//
//  Created by Демид Стариков on 20.07.2022.
//

import Foundation

struct Hint {
    var hintLabel: String
    var hintText: String
}

extension Hint {
    static func getHintList() -> [Hint] {
        [
            Hint(
                hintLabel: "Understand the Sports Betting Language",     hintText: "Understand the Sports Betting Language"),
            Hint(
                hintLabel: "Ignore Personal Biases",
                    hintText: "Ignore Personal Biases"),
            Hint(
                hintLabel: "Bet On What You Know",
                    hintText: "Bet On What You Know"),
            Hint(
                hintLabel: "Don’t Get Too High",
                    hintText: "Don’t Get Too High"),
            Hint(
                hintLabel: "Don’t Get Too Low, Either",
                    hintText: "Don’t Get Too Low, Either"),
            Hint(
                hintLabel: "Set a Budget",
                    hintText: "Set a Budget"),
            Hint(
                hintLabel: "Research",
                    hintText: "Research"),
            Hint(
                hintLabel: "Bet At the Right Time",
                    hintText: "Bet At the Right Time"),
            Hint(
                hintLabel: "Bet At the Right Time",
                    hintText: "Bet At the Right Time"),
            Hint(
                hintLabel: "Bet At the Right Time",
                    hintText: "Bet At the Right Time"),
            Hint(
                hintLabel: "Bet At the Right Time",
                    hintText: "Bet At the Right Time")
        
        
        ]
    }
}
