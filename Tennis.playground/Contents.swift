import UIKit

PlayerTest.defaultTestSuite.run()
GameTest.defaultTestSuite.run()

var game = Game()

func playRandomGame() {
    while !game.getGameIsEnded() {
        game.play()
    }
}

print("❇️ Random 1")
playRandomGame()
