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
                hintLabel: "Understand the Sports Betting Language",
                    hintText: """
                        If I were to ask you what hedging is, what vig is, what expected value is, etc., and you couldn’t answer all of them, that’s a problem.
                        
                        To understand how to fully excel at something, you have to understand the lingo. Think about it this way. You’re going to play golf with a new buddy you just met at work. You get to the first hole, get ready to tee it up, and your new pal asks you which club is the driver and which one is the putter. You better have packed plenty of ice cold drinks, because it’s about to be a long afternoon.
                        
                        While this might be a bit of an exaggeration, you get the point. To even know all of your options in the sports betting world, you must understand the language and terms.
                        """),
            Hint(
                hintLabel: "Ignore Personal Biases",
                    hintText: """
                        A great rule of thumb in the sports betting world is to not bet on “your” teams. Sure, it’s great to have a little bit of extra knowledge on the teams we root for, but it’s nearly impossible to view that knowledge from an unbiased perspective.

                        Just think about when you ask someone how their team is doing. Especially in the era of super teams and tanking, you generally either get a, “my team is the worst,” or a “my team is the best,” type of response. Neither is a good, emotion-free, response for betting.
                        """),
            Hint(
                hintLabel: "Bet On What You Know",
                    hintText: """
                        While tip No. 3 may seem to starkly contrast No. 2, they both have very different meanings. While avoiding the teams you root for, it’s still very advisable to stick to the sports and games you know.
                        
                        If you know nothing about tennis, it’s probably a good idea to steer clear of betting on the French Open. Maybe you’re a big Duke basketball fan, though, and just watched the Blue Devils get blindsided by Stetson in non-conference play.
                        
                        Check out the lines for Stetson in their next game before everyone else catches on. Use the sports you know and enjoy watching to provide information without even having to do extra work.
                        """),
            Hint(
                hintLabel: "Don’t Get Too High",
                    hintText: """
                        It’s easy to hit a hot streak and feel like you’re standing on top of the world. Keep in mind, even the best sports bettors in the world most times only average winning 53, 54, or 55 percent of the time.

                        A hot streak is great, so ride it out as long as you can. But, a hot streak should never be a free pass to bet stupidly, either, because it will always come to an end.
                        """),
            Hint(
                hintLabel: "Don’t Get Too Low, Either",
                    hintText: """
                        Just like how you’ll go through hot streaks, you’ll also go through cold spells. This is even more of a time to not bet without first using your head. It’s easy to get cold and try to throw major money at a game to make up for your losses.

                        Don’t. Trying to double up, triple up, and so on after losing rarely works, and typically ends in just losing more money. Stick to your guns. The cold spell won’t last forever.
                        """),
            Hint(
                hintLabel: "Set a Budget",
                    hintText: """
                        Because sports betting does have that nearly indescribable power to bring pure, raw, emotion into our lives, it’s easy to let it overpower us and spiral out of control. Part of not letting yourself get too high or too low is setting a budget and sticking to it. There are two different perspectives to approach this from.

                        First, you could set a budget that allows you to USE/SPEND only a set amount of money, win or lose, each month. (For example, you get to place $200 worth of bets throughout the month, win or lose.) This strategy would obviously cap potential winnings, but would also give a higher percentage of returning some money.

                        The other option would be to give yourself a set amount of money to start each month with and give no further rules. Obviously, this strategy would give a higher ceiling/lower floor approach.

                        Either of these strategies could be implemented with different time frames, dollar values, and so on. No matter what you choose, it’s critical to have some sort of budget.
                        """),
            Hint(
                hintLabel: "Research",
                    hintText: """
                        Research, research, research. You can never have too much information when it comes to sports betting. All of the following can be great ways to research:

                        -Use free websites to check public betting trends.

                        -Read articles and strategy guides from BettingPros and other trusted sources.

                        -Research different betting systems.

                        -Research expected value, and use it to locate quality bets.

                        And don’t stop here. Even once you place a bet, the research should not stop until the outcome is officially decided. Hedging (the act of placing a bet on a different outcome than the original bet in order to create a situation where there is a guaranteed profit) should always be on the table, and research should never stop.
                        """),
            Hint(
                hintLabel: "Bet At the Right Time",
                    hintText: """
                        Anyone who has bet long enough has fallen victim to this. There’s nothing more aggravating when it comes to placing a bet than doing so, only to realize that waiting an hour or a day could have netted you much better odds or much more money.

                        Paying attention to public betting trends and just using plain common sense can help you avoid betting at inopportune times. This goes not only for placing bets before games get started but also once games have already begun. Furthermore, in sports like football, with a majority of its games being played on Saturdays and Sundays, sharp bettors tend to bet earlier in the week, while… not so sharp… bettors bet later on, closer to the weekend. Recognizing trends like this and making the right plays based on this knowledge can help you make the most opportune bets at the most opportune times.
                        """),
            Hint(
                hintLabel: "Shop Around",
                    hintText: """
                        If you have the luxury, it’s worth checking out different sportsbooks to see which ones are offering the most bettor-friendly odds. It’s quite common for some sportsbooks to have vastly different odds on selected games or props, so by keeping your options open and using multiple sportsbooks, you’ll be able to identify where the most favorable odds exist and maximize your return on investment.
                        """),
            Hint(
                hintLabel: "Have fun",
                    hintText: """
                        Sports betting is supposed to be fun, so make it that way. If you’re not having fun, don’t bet. Understanding the language of the betting world, doing research, and everything else that comes along with being a sharp bettor should not be work. It should be fun. Besides, if you don’t like what you’re doing, odds are, you won’t do it very well. Enjoy sports betting, and have fun!
                        """)
        ]
    }
}
