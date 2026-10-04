func timeToPrepare(drinks: [String]) -> Double {
  var sum: Double = 0
  for i in drinks{
    switch i{
      case "beer", "soda", "water":
      sum += 0.5
      case "shot":
      sum += 1
      case "mixed drink":
      sum += 1.5
      case "fancy drink":
      sum += 2.5
      case "frozen drink":
      sum += 3
      default: break
    }
  }
  return sum
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  var i = 0
  var currLimes = 0
  while currLimes < needed && i < limes.count{
    switch limes[i]{
      case "small":
      currLimes += 6
      case "medium":
      currLimes += 8
      case "large":
      currLimes += 10
      default: break
    }
    i += 1
  }
  return i
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var orders = remainingOrders
  var minutes = Double(minutesLeft)
  for i in remainingOrders.indices{
    var yourTime = timeToPrepare(drinks: remainingOrders[i])
    if minutes >= 0{
    orders.remove(at: 0)
      minutes -= yourTime
    }
    else{
      break
    }
  }
  return orders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    var beerF = ""
    var beerL = ""
    var beerTot = 0
    var sodaF = ""
    var sodaL = ""
    var sodaTot = 0
    for i in orders.indices{
      if orders[i].drink == "beer"{
        if beerF == ""{
          beerF = orders[i].time
          beerL = orders[i].time 
        }
        else{
          beerL = orders[i].time
        }
        beerTot += 1
      } 
      if orders[i].drink == "soda"{
        if sodaF == ""{
          sodaF = orders[i].time 
          sodaL = orders[i].time
        }
        else{
          sodaL = orders[i].time
        }
        sodaTot += 1
      }
    }
  if beerTot != 0 && sodaTot != 0{
    return (beer: (first: beerF, last: beerL, total: beerTot), soda: (first: sodaF, last: sodaL, total: sodaTot))
  }
  else if beerTot != 0 && sodaTot == 0{
    return (beer: (first: beerF, last: beerL, total: beerTot), soda: nil)
  }
  else if beerTot == 0 && sodaTot != 0{
    return (beer: nil, soda: (first: sodaF, last: sodaL, total: sodaTot))
  }
  else{
    return (beer: nil, soda: nil)
  }
}
