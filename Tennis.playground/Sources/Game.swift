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
    
    // Verify if players are deuce
    
    fileprivate func isDeuce() -> Bool {
        return GameLogic.shared.isDeuce(firstScore: player1.getScore(), secondScore: player2.getScore())
    }
    
    fileprivate func getDiffScore() -> Int {
        let value = abs(player1.getScore() - player2.getScore())
        let diff = value > Constants.maxIntervalDeuce ? Constants.maxIntervalDeuce : value
        return diff
    }
    
    fileprivate func verifyScore() {
        gameIsEnded = GameLogic.shared.gameIsEnded(firstScore: player1.getScore(), secondScore: player2.getScore())
    }
    
    fileprivate func getBasicScore() -> String {
        return gameIsEnded ? "\(getLeadingPlayer().getName()) wins" : "\(Constants.tennisScores[player1.getScore()]) \(Constants.tennisScores[player2.getScore()])"
    }
    
    fileprivate func getAdvanceScore() -> String {
        let diff = getDiffScore()
        if gameIsEnded {
            return "\(getLeadingPlayer().getName()) wins"
        } else if diff == 0 {
            return Constants.deuceResults[diff]
        } else {
            return "\(Constants.deuceResults[diff])"
        }
    }
    
    fileprivate func getLeadingPlayer() -> Player {
        return player1.getScore() > player2.getScore() ? player1 : player2
    }
    
    // MARK: - Publics functions
    
    func getPlayer(for number: Int) -> Player {
        return number == 1 ? player1 : player2
    }
    
    public func getGameIsEnded() -> Bool {
        return gameIsEnded
    }
    
    public func play() {
        let randPlayer = Int.random(in: 1 ... Constants.numberOfPlayer)
        playerScored(player: getPlayer(for: randPlayer))
    }
    
    public func getCurrentGameScore() -> String {
        return isDeuce() ? getAdvanceScore() : getBasicScore()
    }
    
    public func play(playerNbr: Int) {
        playerScored(player: getPlayer(for: playerNbr))
    }
    
    public init() { }
}

