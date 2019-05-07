import Foundation
import XCTest

public class PlayerTest: XCTestCase {
    
    private var playerName = "Player name"
    private var player = Player(name: "Player name")
    
    public override func setUp() {
        // This method is called before the invocation of each test method in the class.
    }
    
    public override func tearDown() {
        // This method is called after the invocation of each test method in the class.
    }
    
    func testDidScored() {
        let score = player.getScore()
        player.scored()
        XCTAssert(player.getScore() == score + 1)
    }
    
    func testGetScore() {
        XCTAssert(player.getScore() == 0)
    }
    
    func testGetName() {
        XCTAssert(player.getName() == playerName)
    }
}

