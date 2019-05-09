import Foundation

// Run Test
PlayerTest.defaultTestSuite.run()
GameTest.defaultTestSuite.run()
GameLogicTest.defaultTestSuite.run()
// =>

// Game
var game = Game()

func playRandomGame() {
    game = Game()
    print(game.getCurrentGameScore())
    while !game.getGameIsEnded() {
        game.play()
        print(game.getCurrentGameScore())
    }
}

func playGame(with turns: [Int]) {
    game = Game()
    print(game.getCurrentGameScore())
    var counter = 0
    while !game.getGameIsEnded() {
        game.play(playerNbr: turns[counter])
        print(game.getCurrentGameScore())
        counter += 1
    }
}

print("❇️ Random 1")
playRandomGame()
print("❇️ Random 2")
playRandomGame()
print("❇️ Turn 1")
playGame(with: Constants.turns1)
print("❇️ Turn 2")
playGame(with: Constants.turns2)
print("❇️ Turn 3")
playGame(with: Constants.turns3)
print("❇️ Turn 4")
playGame(with: Constants.turns4)
// =>
