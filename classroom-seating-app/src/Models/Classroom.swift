class Classroom {
    var tables: [Table]
    
    init(tables: [Table]) {
        self.tables = tables
    }
    
    func randomizeSeating(students: [Student]) {
        var shuffledStudents = students.shuffled()
        var index = 0
        
        for table in tables {
            for _ in 0..<table.seats {
                if index < shuffledStudents.count {
                    table.assignStudent(shuffledStudents[index])
                    index += 1
                }
            }
        }
    }
    
    func getSeatingArrangement() -> [Int: [Student]] {
        var arrangement: [Int: [Student]] = [:]
        
        for table in tables {
            arrangement[table.tableNumber] = table.getAssignedStudents()
        }
        
        return arrangement
    }
}