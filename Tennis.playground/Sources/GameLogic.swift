import Foundation

class GameLogic {
    
    // MARK: - Public functions

    func isDeuce(firstScore: Int, secondScore: Int) -> Bool {
        return firstScore >= Constants.tennisScores.count-1 && secondScore >= Constants.tennisScores.count-1
    }
    
    func gameIsEnded() -> Bool {
        return true
    }
}
