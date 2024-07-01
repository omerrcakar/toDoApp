//
//  CreateTodoSheetView.swift
//  toDo
//
//  Created by ÖMER  on 1.07.2024.
//

import SwiftUI
import SwiftData

struct CreateTodoSheetView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var text: String = "Task.."
    @State var priorityRating: Double = 1.0
    @State var date: Date = Date()
    
    
    
    var body: some View {
        NavigationStack {
            Form{
                TextField("Title", text: $title)
                Text("Priority :  " + String(repeating: "⭐️", count: Int(priorityRating)))
                Slider(value: $priorityRating, in: 1...5,step: 1)
                DatePicker("Date", selection: $date, displayedComponents: .date)
                TextEditor(text: $text)
                
            }
            .navigationTitle("Add new task")
            .toolbar{
                ToolbarItem() {
                    Button("Save"){
                        // Create the object
                        let newToDo = ToDoEntry(title: title, text: text, priorityRating: priorityRating, date: date)
                        
                        // saving into swiftdata
                        modelContext.insert(newToDo)
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                    .foregroundStyle(.red)
                }
            }
        }
    }
}

#Preview {
    CreateTodoSheetView()
}
