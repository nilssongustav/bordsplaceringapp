import SwiftUI

struct MainView: View {
    @State private var seatingArrangement: [[Student]] = []
    @State private var students: [Student] = []
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Classroom Seating Arrangement")
                    .font(.largeTitle)
                    .padding()
                
                List {
                    ForEach(seatingArrangement.indices, id: \.self) { tableIndex in
                        Section(header: Text("Table \(tableIndex + 1)")) {
                            ForEach(seatingArrangement[tableIndex], id: \.id) { student in
                                Text(student.name)
                            }
                        }
                    }
                }
                
                NavigationLink(destination: SettingsView()) {
                    Text("Settings")
                }
                .padding()
            }
            .onAppear(perform: loadStudents)
        }
    }
    
    private func loadStudents() {
        // Load students from DataController or any data source
        // This is a placeholder for loading logic
        students = DataController().fetchStudents()
        seatingArrangement = Classroom().randomizeSeating(for: students)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}