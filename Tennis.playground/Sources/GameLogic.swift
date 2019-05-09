import Foundation

class GameLogic {
    
    // MARK: - Public functions

    func isDeuce(firstScore: Int, secondScore: Int) -> Bool {
        return firstScore >= Constants.tennisScores.count-1 && secondScore >= Constants.tennisScores.count-1
    }
    
    func gameIsEnded(firstScore: Int, secondScore: Int) -> Bool {
        return isDeuce(firstScore: firstScore, secondScore: secondScore) ? isWonAdvance(firstScore, secondScore) : isWonBasic(firstScore, secondScore)
    }
    
    // MARK: - Private functions

    fileprivate func getDiffScore(_ first: Int, _ second: Int) -> Int {
        let value = abs(first - second)
        let diff = value > Constants.maxIntervalDeuse ? Constants.maxIntervalDeuse : value
        return diff
    }
    
    fileprivate func isWonAdvance(_ first: Int, _ second: Int) -> Bool {
        return getDiffScore(first, second) == Constants.maxIntervalDeuse
    }
    
    fileprivate func isWonBasic(_ first: Int, _ second: Int) -> Bool {
        return first == Constants.tennisScores.count || second == Constants.tennisScores.count
    }
}
