typealias ChangeClosure = @Sendable ((String, String, String)) -> (String, String, String)

let flip: ChangeClosure = { (tuple: (String, String, String)) in
  return (tuple.1, tuple.0, tuple.2)
}
let rotate: ChangeClosure = { (tuple: (String, String, String)) in
  return (tuple.1, tuple.2, tuple.0)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ([UInt8], (String, String, String)) -> (String, String, String) {
  return { (ID, tuple) in
    var newTuple = tuple
    for i in ID.reversed(){
      if i == 1{
        newTuple = rotator(newTuple)
      }
      else{
        newTuple = flipper(newTuple)
      }
    }
    return newTuple
  }
}
