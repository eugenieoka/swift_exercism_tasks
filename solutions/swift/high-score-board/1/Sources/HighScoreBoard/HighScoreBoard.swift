func newScoreBoard() -> [String: Int] {
  let scoreBoard: [String: Int] = [:]
  return scoreBoard
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores[name] = nil
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
  if scores[name] != nil{
  scores[name] = 0
  }
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  if scores[name] != nil{
  scores[name, default: 0] += delta 
  }
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  let sortByName: ((String, Int), (String, Int)) -> Bool = { lhs, rhs in
    let left = lhs.0
    let right = rhs.0
    return left < right
  }
  let sortedNames = scores.sorted(by: sortByName)
  var returnPlayers: [(String, Int)] = []
  for (name, score) in sortedNames{
    returnPlayers.append((name, score))
  }
  return returnPlayers
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  let sortByScore: ((String, Int), (String, Int)) -> Bool = { lhs, rhs in
    let left = lhs.1
    let right = rhs.1
    return left > right
  } 
  let sortedScores = scores.sorted(by: sortByScore)
  var returnScores: [(String, Int)] = []
  for (name, score) in sortedScores{
    returnScores.append((name, score))
  }
  return returnScores
}
