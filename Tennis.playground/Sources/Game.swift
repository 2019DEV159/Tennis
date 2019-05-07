import Foundation

public class Game {
    
    // MARK: - Privates
    
    private var player1: Player = Player(name: "Player 1")
    private var player2: Player = Player(name: "Player 2")
    private var gameIsEnded: Bool = false
    
    // MARK: - Privates functions
    
    fileprivate func playerScored(player: Player) {
        player.scored()
    }
    
    func getPlayer(for number: Int) -> Player {
        return number == 1 ? player1 : player2
    }
    
    // MARK: - Publics functions
    
    public func getGameIsEnded() -> Bool {
        return gameIsEnded
    }
    
    public func play() {
        let randPlayer = Int.random(in: 1 ... Constants.numberOfPlayer)
        playerScored(player: getPlayer(for: randPlayer))
    }
    
    public init() { }
}

