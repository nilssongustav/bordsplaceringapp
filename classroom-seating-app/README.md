# Classroom Seating App

## Overview
The Classroom Seating App is a macOS application designed to help educators manage student seating arrangements in a classroom. The app allows users to import a list of students and randomly assign them to tables, with options to customize the appearance and settings.

## Features
- Import student names and manage their data.
- Randomly assign students to tables in a classroom.
- Customize appearance settings for the app.
- User-friendly interface for managing seating arrangements.

## Project Structure
```
classroom-seating-app
├── src
│   ├── Models
│   │   ├── Student.swift
│   │   ├── Table.swift
│   │   └── Classroom.swift
│   ├── Views
│   │   ├── MainView.swift
│   │   ├── SettingsView.swift
│   │   └── StudentListView.swift 
│   ├── Controllers
│   │   ├── SeatingController.swift
│   │   └── DataController.swift
│   └── Resources
│       ├── Info.plist
│       └── Assets.xcassets
├── Tests
│   └── SeatingTests.swift
└── README.md
```

## Setup Instructions
1. Clone the repository to your local machine.
2. Open the project in Xcode.
3. Build and run the application on your macOS device.

## Usage
- Launch the app and navigate to the Student List view to import student names.
- Use the Main view to view and manage seating arrangements.
- Access the Settings view to customize the app's appearance.

## Contributing
Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.