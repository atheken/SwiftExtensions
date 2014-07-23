import Foundation
import UIKit

extension UIView{
  func FirstAncestorOfType<T>() -> T? {
    var retval:T? = nil
    
    if(self.superview?){
      retval = self.superview as? T
      if(!retval?){
        retval = self.superview.FirstAncestorOfType()
      }
    }
    return retval
  }
}
