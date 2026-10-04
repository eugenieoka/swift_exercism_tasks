func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func password_check(_ your_password: String) -> String{
    if your_password != password{
      return "Sorry. No hidden secrets here."
    } 
    else {
      return secret
    }
  }
  return password_check
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let a = f(room)
  let b = f(a)
  let c = f(b)
  return (a, b, c)
}
