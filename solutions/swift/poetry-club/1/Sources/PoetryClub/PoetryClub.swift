import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  let words = poem.components(separatedBy: "\n")
  return words
}

func frontDoorPassword(_ phrase: String) -> String {
  var letters: [String] = [] 
  let words = splitOnNewlines(phrase)
  for word in words{
    if let firstChar = word.first{
      letters.append(String(firstChar).uppercased())
    }
    else{
      letters.append("_")
    }
  }
  return letters.joined()
}

func backDoorPassword(_ phrase: String) -> String {
  var letters: [String] = []
  let words = splitOnNewlines(phrase)
  for word in words{
    var newWord = word
    while newWord.hasSuffix(" "){
      newWord.removeLast()
    }
    if let lastChar = newWord.last { 
      letters.append(String(lastChar).lowercased())
    }
    else{
      letters.append("_")
    }
  }
  return letters.joined() + ", please"
}

func secretRoomPassword(_ phrase: String) -> String {
  var letters: [String] = []
  let words = splitOnNewlines(phrase)
  for i in words.indices{
    if let iIndex = words[i].index(words[i].startIndex, offsetBy: i, limitedBy: words[i].endIndex), iIndex < words[i].endIndex{
      letters.append(String(words[i][iIndex]).uppercased())
    }
    else{
      letters.append("_")
    }
  }
  return letters.joined() + "!"
}
