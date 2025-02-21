import XCTest
@testable import classroom_seating_app

class SeatingTests: XCTestCase {

    var classroom: Classroom!
    var student1: Student!
    var student2: Student!
    var table: Table!

    override func setUp() {
        super.setUp()
        classroom = Classroom()
        student1 = Student(name: "Alice", id: 1)
        student2 = Student(name: "Bob", id: 2)
        table = Table(tableNumber: 1, seats: 2)
    }

    override func tearDown() {
        classroom = nil
        student1 = nil
        student2 = nil
        table = nil
        super.tearDown()
    }

    func testAddStudentToTable() {
        table.addStudent(student1)
        XCTAssertEqual(table.seats.count, 1)
        XCTAssertEqual(table.seats[0].name, "Alice")
    }

    func testRandomizeSeating() {
        classroom.addStudent(student1)
        classroom.addStudent(student2)
        classroom.addTable(table)
        classroom.randomizeSeating()

        // Check if students are seated at the table
        XCTAssertTrue(table.seats.contains(where: { $0.name == "Alice" || $0.name == "Bob" }))
    }

    func testRemoveStudentFromTable() {
        table.addStudent(student1)
        table.removeStudent(student1)
        XCTAssertEqual(table.seats.count, 0)
    }
}