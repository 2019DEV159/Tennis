import Foundation

public class Game {
    
    // MARK: - Privates
    
    private var player1: Player = Player(name: "Player 1")
    private var player2: Player = Player(name: "Player 2")
    private var gameIsEnded: Bool = false
    
    // MARK: - Privates functions
    
    fileprivate func playerScored(player: Player) {
        player.scored()
        verifyScore()
    }
    
    func getPlayer(for number: Int) -> Player {
        return number == 1 ? player1 : player2
    }
    
    // Verify if players are deuce
    fileprivate func isDeuce() -> Bool {
        return player1.getScore() >= Constants.tennisScores.count-1 && player2.getScore() >= Constants.tennisScores.count-1
    }
    
    fileprivate func isWonBasic() -> Bool {
        return player1.getScore() == Constants.tennisScores.count || player2.getScore() == Constants.tennisScores.count
    }
    
    fileprivate func getDiffScore() -> Int {
        let value = abs(player1.getScore() - player2.getScore())
        let diff = value > Constants.maxIntervalDeuse ? Constants.maxIntervalDeuse : value
        return diff
    }
    
    fileprivate func isWonAdvance() -> Bool {
        return getDiffScore() == Constants.maxIntervalDeuse
    }
    
    fileprivate func verifyScore() {
        gameIsEnded = isDeuce() ? isWonAdvance() : isWonBasic()
    }
    
    // MARK: - Publics functions
    
    public func getGameIsEnded() -> Bool {
        return gameIsEnded
    }
    
    public func play() {
        let randPlayer = Int.random(in: 1 ... Constants.numberOfPlayer)
        playerScored(player: getPlayer(for: randPlayer))
    }
    
    public func getCurrentGameScore() -> String {
        return ""
    }
    
    public init() { }
}

