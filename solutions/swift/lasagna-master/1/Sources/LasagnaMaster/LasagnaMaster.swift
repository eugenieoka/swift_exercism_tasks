func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int{
  return expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int{
  return layers.count * 2
}

func quantities(layers: String...) -> (noodles: Int, sauce: Double){
  var noodlesSum: Int = 0
  var sauceSum: Double = 0
  for i in layers{
    switch i{
      case "sauce": sauceSum += 0.2
      case "noodles": noodlesSum += 3
      default: break
    }
  }
  return (noodles: noodlesSum, sauce: sauceSum)
}

func toOz(_ sum: inout (noodles: Int, sauce: Double)){
  sum.sauce *= 33.814 
}

func redWine(layers: String...) -> Bool{
// task requires 5 functions
  func mozzarellaSum(_ layers: [String]) -> Double{
    var sum: Double = 0
    for i in layers{
      if i == "mozzarella"{
        sum += 1
      }
    }
    return sum
  }
  func ricottaSum(_ layers: [String]) -> Double{
    var sum: Double = 0
    for i in layers{
      if i == "ricotta"{
        sum += 1
      }
    }
    return sum
  }
  func bechamelSum(_ layers: [String]) -> Double{
    var sum: Double = 0
    for i in layers{
      if i == "béchamel"{
        sum += 1
      }
    }
    return sum
  }
  func sauceSum(_ layers: [String]) -> Double{
    var sum: Double = 0
    for i in layers{
      if i == "sauce"{
        sum += 1
      }
    }
    return sum
  }
  func meatSum(_ layers: [String]) -> Double{
    var sum: Double = 0
    for i in layers{
      if i == "meat"{
        sum += 1
      }
    }
    return sum
  }
  return !(mozzarellaSum(layers) + ricottaSum(layers) + bechamelSum(layers) > meatSum(layers) + sauceSum(layers)) 
}
