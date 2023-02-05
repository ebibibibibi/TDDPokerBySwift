//
//  HandModel.swift
//  Pocer
//
//  Created by kotomi tahkahashi on 2023/02/04.
//

import Foundation

struct Hand {
    let cards: [Card]
    
    var isPair: Bool {
        return cards[0].rank == cards[1].rank
    }
    
    var isFlush: Bool {
        return cards[0].suit == cards[1].suit
    }
    
    var isHighcard: Bool {
        return  cards[0].rank == cards[1].rank && cards[0].suit == cards[1].suit
    }
    
    enum Hand {
        case pair
        case flash
        case highCard
    }
}
