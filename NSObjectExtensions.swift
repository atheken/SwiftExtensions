extension NSObject {
  func getType()-> String {
    return String.fromCString(object_getClassName(self))!
  }
}
