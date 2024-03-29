//
//  PocerTests.swift
//  PocerTests
//
//  Created by kotomi tahkahashi on 2023/02/02.
//

import XCTest
@testable import Pocer

class PocerTests: XCTestCase {
    
    func testCardNotation() {
        var card: Card
        // Cardが適切に初期化され、インスタンスが保持されているのかを確認する。
        
        card = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card.notation, "3♡")
        
        card = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card.notation, "J♠︎")
    }
    
    func testHasSomeSuit() {
        let card = Card(suit: .heart, rank: .ace)
        let card2 = Card(suit: .heart, rank: .two)
        XCTAssertTrue(card.hasSomeSuit(card2))
        
        let card3 = Card(suit: .spade, rank: .ace)
        let card4 = Card(suit: .heart, rank: .two)
        
        XCTAssertFalse(card3.hasSomeSuit(card4))
    }
    
    func testHasSomeCard() {
        let card = Card(suit: .heart, rank: .ace)
        let card2 = Card(suit: .heart, rank: .ace)
        XCTAssertTrue(card.hasSomeRank(card2))
        
        let card3 = Card(suit: .spade, rank: .ace)
        let card4 = Card(suit: .heart, rank: .two)
        
        XCTAssertFalse(card3.hasSomeRank(card4))
    }
    
    // テストに意図を語らせる、必要な条件をテストに明記して、それをもとに実装を作成する。
    func testCardEqual() {
        var card1: Card
        var card2: Card
        
        XCTAssertEqual(Card(suit: .club, rank: .jack)
                       , Card(suit: .club, rank: .jack)
        )
        
        XCTAssertNotEqual(Card(suit: .diamond, rank: .queen)
                          , Card(suit: .club, rank: .jack)
        )
    }
    
    func testIsPair() {
        let card1 = Card(suit: .spade, rank: .king)
        let card2 = Card(suit: .heart, rank: .king)
        let hand = Hand(cards: [card1, card2])
        XCTAssertTrue(hand.isPair)
        
        let card3 = Card(suit: .spade, rank: .queen)
        let card4 = Card(suit: .heart, rank: .king)
        let hand2 = Hand(cards: [card3, card4])
        XCTAssertFalse(hand2.isPair)
        
    }
    
    func testIsFlush() {
        let card1 = Card(suit: .spade, rank: .king)
        let card2 = Card(suit: .heart, rank: .king)
        let hand = Hand(cards: [card1, card2])
        XCTAssertTrue(hand.isFlush)
        
        let card3 = Card(suit: .spade, rank: .queen)
        let card4 = Card(suit: .heart, rank: .king)
        let hand2 = Hand(cards: [card3, card4])
        XCTAssertFalse(hand2.isFlush)
        
    }
    
    func testIsHighcard() {
        let card1 = Card(suit: .spade, rank: .king)
        let card2 = Card(suit: .heart, rank: .king)
        let hand = Hand(cards: [card1, card2])
        XCTAssertTrue(hand.isHighcard)
        
        let card3 = Card(suit: .spade, rank: .queen)
        let card4 = Card(suit: .heart, rank: .king)
        let hand2 = Hand(cards: [card3, card4])
        XCTAssertFalse(hand2.isHighcard)
        
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}


// この時点で、「Cardを定義してインスタンスを作成する」ための消すとケースはひとつしか存在しない。
// 他のRankやSuitを代入してインスタンスを作成しても成功するのか検証を行う。

// まず最初にベタ書きで良いので、テストケースが通る実装を考える。
