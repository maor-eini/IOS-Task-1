
import Foundation

public class StudentDB {
    static let sharedInstance = StudentDB()
    private init(){}
    
    var students: [Student] = []
    
    func addStudent(student: Student){
        if findStudentByID(id:student.id) == -1 {
            students.append(student)
        }
    }
    
    func findStudentByID(id:NSString) -> Int {
        var i = 0
        for student in students{
            if student.id == id {
                return i
            }
            i+=1
        }
        return -1
    }
    
    func printDB() {
        for student in students {
            student.printStudent()
        }
    }
    
    func deleteStudentByID(id:NSString) {
        students.remove(at:findStudentByID(id:id))
    }
    
    func updateStudent(student:Student) {
        let i = findStudentByID(id:student.id)
        if i != -1 {
            students[i].fName = student.fName
            students[i].iName = student.iName
            students[i].phoneNum = student.phoneNum
        }
    }
    
    func getStudentByID(id:NSString) -> Student {
        return students[findStudentByID(id:id)]
    }
}
