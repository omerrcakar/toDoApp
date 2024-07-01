//
//  EditTodoSheetView.swift
//  toDo
//
//  Created by ÖMER  on 1.07.2024.
//

import SwiftUI
import SwiftData

struct EditTodoSheetView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var editingTodo : ToDoEntry
    @State var isEditMode = false
    
    var body: some View {
        
        
        if isEditMode{
            Form{
                TextField("Title", text: $editingTodo.title)
                Text("Priority :  " + String(repeating: "⭐️", count: Int(editingTodo.priorityRating)))
                Slider(value: $editingTodo.priorityRating, in: 1...5,step: 1)
                DatePicker("Date", selection: $editingTodo.date, displayedComponents: .date)
                TextEditor(text: $editingTodo.text)
                    .frame(height: 300)
                
            }
            .navigationTitle("Edit Mode")
                .toolbar{
                    
                    Button("Delete"){
                        modelContext.delete(editingTodo)
                        dismiss()
                    }
                    .foregroundStyle(.red)
                    Button("Done"){
                        isEditMode = false
                    }
                    .foregroundStyle(.green)
                }
        }else{
            ToDoDetailView(toDo: editingTodo)
                .toolbar{
                    Button("Edit"){
                        isEditMode = true
                    }
                    .foregroundStyle(.green)
                }
        }
        
    }
}

#Preview {
    NavigationStack {
        EditTodoSheetView(editingTodo: ToDoEntry(title: "First job day", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nulla ligula, condimentum eu odio in, hendrerit eleifend nisi. Phasellus lacus mi, ornare quis velit nec, placerat varius nulla. Phasellus ac dignissim nunc. Sed ut mi eu lorem tincidunt pellentesque. ", priorityRating: 4, date: Date()))
    }
}
