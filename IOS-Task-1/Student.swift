
import Foundation

public class Student {
    // TODO -
    // Insert variable verification e.g: ID only numeric characters, Phone number format.
    
    var id: NSString = ""
    var fName: NSString = ""
    var iName: NSString = ""
    var phoneNum: NSString = ""
    var degree: NSString = ""
    
    init(id: NSString, fName: NSString, iName: NSString, phoneNum: NSString, degree: NSString){
        self.id = id
        self.fName = fName
        self.iName = iName
        self.phoneNum = phoneNum
        self.degree = degree
    }
    
    func printStudent() {
        print("id:\(self.id), fName:\(self.fName), iName:\(self.iName), phoneNum:\(self.phoneNum), degree:\(self.degree)")
    }
}
