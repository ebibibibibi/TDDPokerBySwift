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
        return true
    }
    
    enum Hand {
        case pair
        case flash
        case highCard
    }
}
