let birthday = "Birthday"
let valentine = "Valentine's Day"
let anniversary = "Anniversary"

let space: Character = " "
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
  return "Happy " + occasion + "\(space)" + name + "\(exclamation)"
}

func graduationFor(name: String, year: Int) -> String {
  return "Congratulations\(space)\(name)\(exclamation)\nClass of \(year)"
}

func costOf(sign: String) -> Int {
  return 2 * sign.count + 20
}