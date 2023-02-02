//
//  CardModel.swift
//  Pocer
//
//  Created by kotomi tahkahashi on 2023/02/02.
//

import Foundation

struct Card {
    enum Suit {
        case clover
        case club
        case spade
        case heart
    }
    
    enum Rank {
        case one
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case jack
        case queen
        case king
    }
    
    let suit: Suit
    let rank: Rank
}
