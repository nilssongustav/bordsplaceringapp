class SeatingController {
    var classroom: Classroom

    init(classroom: Classroom) {
        self.classroom = classroom
    }

    func randomizeSeating() {
        classroom.randomizeStudentSeating()
    }

    func updateView() {
        // Logic to update the view with the current seating arrangement
    }
}