public enum Constants {
    static let defaultStartingScore: Int = 0
    static let numberOfPlayer: Int = 2
    static let maxIntervalDeuce: Int = 2
    
    static let tennisScores = ["Love", "Fifteen", "Thirty", "Forty"]
    static let deuceResults = ["Deuce", "Advantage"]
    
    // Test case
    public static let turns1 = [1, 1, 1, 1] // Player 1 wins
    public static let turns2 = [2, 2, 2, 2] // Player 2 wins
    public static let turns3 = [1, 2, 1, 2, 1, 2, 2, 2] // Deuce, Advantage Player 2, Player 2 wins
    public static let turns4 = [1, 2, 1, 2, 1, 2, 1, 1] // Deuce, Advantage Player 1, Player 1 wins
}

