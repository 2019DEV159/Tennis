import UIKit

PlayerTest.defaultTestSuite.run()
GameTest.defaultTestSuite.run()

var game = Game()

func playRandomGame() {
    print(game.getCurrentGameScore())
    while !game.getGameIsEnded() {
        game.play()
        print(game.getCurrentGameScore())
    }
}

print("❇️ Random 1")
playRandomGame()
