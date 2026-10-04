struct Size{
  var width: Int = 80
  var height: Int = 60
  mutating func resize(newWidth: Int, newHeight: Int){
    width = max(newWidth, 1)
    height = max(newHeight, 1)
  }
}

struct Position{
  var x = 0
  var y = 0
  mutating func moveTo(newX: Int, newY: Int){
    x = max(newX, 0)
    y = max(newY, 0)
  }
}

class Window{
  var title = "New Window"
  let screenSize = Size(width: 800, height: 600)
  var size = Size()
  var position = Position()
  var contents: String?

  init(){} //required by task

  init(title: String, contents: String?, size: Size = Size(), position: Position = Position()) {
    self.title = title
    self.contents = contents
    self.size = size
    self.position = position
  }
  
  func resize(to newSize: Size) {
    size.resize(newWidth:  min(newSize.width,  screenSize.width  - position.x), newHeight: min(newSize.height, screenSize.height - position.y))
  }

  func move(to newPosition: Position) {
    position.moveTo(newX: min(newPosition.x, screenSize.width  - size.width), newY: min(newPosition.y, screenSize.height - size.height))
  }

  func update(title: String){
    self.title = title
  }

  func update(text: String?){
    contents = text
  }

  func display() -> String{
    if let realContents  = contents{
      return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(realContents)\n"
    }
    else{
      return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n[This window intentionally left blank]\n"
    }
  }
  
}
