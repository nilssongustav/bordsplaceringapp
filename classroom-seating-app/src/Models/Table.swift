class Table {
    var tableNumber: Int
    var seats: [Student?]

    init(tableNumber: Int, numberOfSeats: Int) {
        self.tableNumber = tableNumber
        self.seats = Array(repeating: nil, count: numberOfSeats)
    }

    func assignStudent(student: Student, seatIndex: Int) -> Bool {
        guard seatIndex >= 0 && seatIndex < seats.count else {
            return false
        }
        if seats[seatIndex] == nil {
            seats[seatIndex] = student
            return true
        }
        return false
    }

    func removeStudent(seatIndex: Int) -> Student? {
        guard seatIndex >= 0 && seatIndex < seats.count else {
            return nil
        }
        let student = seats[seatIndex]
        seats[seatIndex] = nil
        return student
    }

    func getAssignedStudents() -> [Student] {
        return seats.compactMap { $0 }
    }
}