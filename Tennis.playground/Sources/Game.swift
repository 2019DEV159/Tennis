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
    
    // MARK: - Publics functions
    
    public init() { }
}

