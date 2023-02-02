//
//  CardModel.swift
//  Pocer
//
//  Created by kotomi tahkahashi on 2023/02/02.
//

import Foundation

struct Card {
    enum Suit {
        case heart
    }
    
    enum Rank {
        case three
    }
    
    let suit: Suit
    let rank: Rank
}
