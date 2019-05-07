# Tennis
Tennis Kata in Swift

## Rules

The scoring system is rather simple:
- Each player can have either of these points in one game 0 15 30 40
- If you have 40 and you win the ball you win the game, however there are special rules.
- If both have 40, the players are deuce.
a. If the game is in deuce, the winner of a ball will have advantage and game ball.
b. If the player with advantage wins the ball he wins the game
c. If the player without advantage wins they are back at deuce.


- A game is won by the first player to have won at least four points in total and at least two points more than the opponent.
- The running score of each game is described in a manner peculiar to tennis: scores from zero to three points are described as “love”, “fifteen”, “thirty”, and “forty” respectively.
- If at least three points have been scored by each player, and the scores are equal, the score is “deuce”.
- If at least three points have been scored by each side and a player has one more point than his opponent, the score of the game is “advantage” for the player in the lead.

## Instalation

The project doesn't need any installation assuming that you already have the last version of XCode installed on your computer and know how Swift Playground works


## Run

- Open the Playground project
- Run the project

If you want to try new type of game, define an array for turns with `Int`, 1 for player 1 and 2 for player 2 and run (if number > 1, it refers to player 2 by default)

By default 2 random games and four cases are run :
`[1, 1, 1, 1] // Player 1 wins`
`[2, 2, 2, 2] // Player 2 wins`
`[1, 2, 1, 2, 1, 2, 2, 2] // Deuce, Advantage Player 2, Player 2 wins`
`[1, 2, 1, 2, 1, 2, 1, 1] // Deuce, Advantage Player 1, Player 1 wins`

## Run tests
- Tests run automatically
- You can execute Tests in the Tennis.playground file by executing this lines : 
`PlayerTest.defaultTestSuite.run()`
`GameTest.defaultTestSuite.run()`
