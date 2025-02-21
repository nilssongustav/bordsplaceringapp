import SwiftUI

struct SettingsView: View {
    @State private var selectedTheme: String = "Light"
    @State private var enableNotifications: Bool = true

    var body: some View {
        Form {
            Section(header: Text("Appearance")) {
                Picker("Theme", selection: $selectedTheme) {
                    Text("Light").tag("Light")
                    Text("Dark").tag("Dark")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("Notifications")) {
                Toggle("Enable Notifications", isOn: $enableNotifications)
            }
        }
        .padding()
        .navigationTitle("Settings")
    }
}