class Student {
    var name: String
    var id: Int

    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }

    func getDetails() -> String {
        return "Student ID: \(id), Name: \(name)"
    }
}