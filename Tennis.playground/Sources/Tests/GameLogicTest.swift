import Foundation
import XCTest

public class GameLogicTest: XCTestCase {
    
    private var logic = GameLogic()
    
    public override func setUp() {
        // This method is called before the invocation of each test method in the class.
    }
    
    public override func tearDown() {
        // This method is called after the invocation of each test method in the class.
    }
    
    func testIsDeuce() {
        XCTAssert(logic.isDeuce(firstScore: 0, secondScore: 1) == false)
        XCTAssert(logic.isDeuce(firstScore: 3, secondScore: 3) == true)
    }
    
    func testGameIsEnded() {
        XCTAssert(logic.gameIsEnded(firstScore: 0, secondScore: 0) == false)
        XCTAssert(logic.gameIsEnded(firstScore: 3, secondScore: 0) == false)
        XCTAssert(logic.gameIsEnded(firstScore: 4, secondScore: 0) == true)
        XCTAssert(logic.gameIsEnded(firstScore: 3, secondScore: 5) == true)
    }
}
