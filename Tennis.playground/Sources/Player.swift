import Foundation

class Player {
    
    // Score
    // 0 => 0
    // 1 => 15
    // 2 => 30
    // 3 => 40
    private var score: Int = Constants.defaultStartingScore
    private var name: String = ""
    
    
    init(name: String) {
        self.name = name
    }
    
    // MARK: - Publics functions
    
    func scored() {
        score += 1
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getName() -> String {
        return name
    }
}

