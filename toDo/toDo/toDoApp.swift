//
//  toDoApp.swift
//  toDo
//
//  Created by ÖMER  on 30.06.2024.
//

import SwiftUI
import SwiftData

@main
struct toDoApp: App {
    
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            ToDoEntry.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    
    
    
    var body: some Scene {
        WindowGroup {
            ToDoListView()
        }.modelContainer(sharedModelContainer)
    }
}
