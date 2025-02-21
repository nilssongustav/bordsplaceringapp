class DataController {
    var students: [Student] = []
    
    func importStudents(from file: String) {
        // Logic to import students from a file
    }
    
    func exportStudents(to file: String) {
        // Logic to export students to a file
    }
    
    func addStudent(_ student: Student) {
        students.append(student)
    }
    
    func removeStudent(withId id: String) {
        students.removeAll { $0.id == id }
    }
    
    func getStudents() -> [Student] {
        return students
    }
}