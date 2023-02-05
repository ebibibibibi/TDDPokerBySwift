//
//  CardModel.swift
//  Pocer
//
//  Created by kotomi tahkahashi on 2023/02/02.
//

import Foundation

struct Card: Equatable {
    enum Suit: String {
        case spade = "♠︎"
        case heart = "♡"
        case club = "♧"
        case diamond = "♢"
    }
    
    enum Rank: String {
        case ace = "A"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
        case ten = "10"
        case jack = "J"
        case queen = "Q"
        case king = "K"
    }
    
    let suit: Suit
    let rank: Rank
    
    var notation: String {
        return rank.rawValue + suit.rawValue
    }
    
    func hasSomeSuit(_ card: Card) -> Bool {
        return suit == card.suit
    }
    
    func hasSomeRank(_ card: Card) -> Bool {
        return rank == card.rank
    }
    
    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.hasSomeRank(rhs) && lhs.hasSomeSuit(rhs)
    }
}
