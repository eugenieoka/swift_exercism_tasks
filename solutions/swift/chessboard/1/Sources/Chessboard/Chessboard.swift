let ranks = 1...8
let files = "A"..."H"

func isValidSquare(rank: Int, file: String) -> Bool {
  return files.contains(file) && ranks.contains(rank)
}

func getRow(_ board : [String], rank: Int) -> [String] {
  let start = (rank-1)*8
  return Array(board[start..<(start+8)])
}
