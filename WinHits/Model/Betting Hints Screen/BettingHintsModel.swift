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
                    hintText: """
                        While tip No. 3 may seem to starkly contrast No. 2, they both have very different meanings. While avoiding the teams you root for, it’s still very advisable to stick to the sports and games you know.
                        
                        If you know nothing about tennis, it’s probably a good idea to steer clear of betting on the French Open. Maybe you’re a big Duke basketball fan, though, and just watched the Blue Devils get blindsided by Stetson in non-conference play.
                        
                        Check out the lines for Stetson in their next game before everyone else catches on. Use the sports you know and enjoy watching to provide information without even having to do extra work.
                        """),
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
