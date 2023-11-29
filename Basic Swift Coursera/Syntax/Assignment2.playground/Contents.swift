import Foundation

let levelScore = 10
var gameScore = 0
var levelBonusScore: Double = 10.0

gameScore += levelScore
print("The gamescore is \(gameScore)")

levelBonusScore = 20
print("The Level bonus score is \(Int(levelBonusScore))")

// typecasting
gameScore += Int(levelBonusScore)

print("The game final score is \(gameScore)")

// additionalconstants
let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10

let levelScoreDifference = Double(levelLowestScore) - Double(levelHighestScore)
let levelAverageScore = Double(levelScoreDifference) / Double(levels)
print("the level average score is \(levelAverageScore)")

gameScore = Int(levelAverageScore)
print(gameScore)
