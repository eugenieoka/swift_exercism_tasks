func getName(_ item: (name: String, amount: Int)) -> String {
  return item.0
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  return (name, amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
  var newItems = items
  for i in newItems.indices{
    if newItems[i].name == toy{
      newItems[i].amount = amount
    }
  }
  return newItems
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var newItems: [(name: String, amount: Int, category: String)] = []
  for item in items{
    newItems.append((name: item.name, amount: item.amount, category: category))
  }
  return newItems
}
