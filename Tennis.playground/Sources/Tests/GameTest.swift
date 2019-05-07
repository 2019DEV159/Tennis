import Foundation
import XCTest

public class GameTest: XCTestCase {
    
    private var game = Game()
    
    public override func setUp() {
        // This method is called before the invocation of each test method in the class.
        game = Game()
    }
    
    public override func tearDown() {
        // This method is called after the invocation of each test method in the class.
    }
    
    func testPlayRandom() {
        game.play()
        XCTAssert(game.getPlayer(for: 1).getScore() == 1 || game.getPlayer(for: 2).getScore() == 1)
    }
    
    func testGetGameIsEnded() {
         XCTAssert(game.getGameIsEnded() == false)
    }
    
    func testGetCurrentGameScore() {
        XCTAssert(game.getCurrentGameScore().isEmpty == false)
        XCTAssert(game.getCurrentGameScore() == "Love Love")
    }
    
    func testPlay() {
        game.play(playerNbr: 1)
        XCTAssert(game.getPlayer(for: 1).getScore() == 1)
    }
    
    // Test Game is ended
    func playTurn(with turns: [Int]) {
        for turn in turns {
            game.play(playerNbr: turn)
        }
    }
    
    func testGameIsEndedTurn1() {
        playTurn(with: Constants.turns1)
        XCTAssert(game.getGameIsEnded() == true)
    }
    
    func testGameIsEndedTurn2() {
        playTurn(with: Constants.turns2)
        XCTAssert(game.getGameIsEnded() == true)
    }
    
    func testGameIsEndedTurn3() {
        playTurn(with: Constants.turns3)
        XCTAssert(game.getGameIsEnded() == true)
    }
    
    func testGameIsEndedTurn4() {
        playTurn(with: Constants.turns4)
        XCTAssert(game.getGameIsEnded() == true)
    }
    
    func testGameIsEndedRandom() {
        while !game.getGameIsEnded() {
            game.play()
        }
        XCTAssert(game.getGameIsEnded() == true)
    }
}
