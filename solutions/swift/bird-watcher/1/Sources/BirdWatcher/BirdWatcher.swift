func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var sum = 0
  for i in birdsPerDay{
    sum += i
  }
  return sum
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  var weekSum = 0
  for i in (weekNumber-1)*7..<(weekNumber-1)*7+7{
    weekSum += birdsPerDay[i]
  }
  return weekSum
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var fixed = birdsPerDay
  for i in stride(from: 0, to: fixed.count, by: 2){
    fixed[i] += 1
  }
  return fixed
}
