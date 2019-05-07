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

    }
}
