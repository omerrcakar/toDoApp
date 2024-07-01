//
//  ContentView.swift
//  toDo
//
//  Created by ÖMER  on 30.06.2024.
//

import SwiftUI
import SwiftData

// @Query : get information out of swiftData, siwftdatadaki bilgileri almamıza olanak sağlar

// model context : as bridge our app and swiftdata , query ile swiftdatadaki tüm verileri alıp model context ile kullanılırız

struct ToDoListView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \ToDoEntry.date, order: .reverse) private var toDoEntries: [ToDoEntry]
    
    @State var showSheet = false
    @State private var searchText = ""

    var body: some View {
        
        NavigationStack {
            List(searchResult){ toDos in
                NavigationLink(destination: EditTodoSheetView(editingTodo: toDos)) {
                    ToDoRowView(toDo: toDos)
                }
            }
            .navigationTitle("\(toDoEntries.count) To Do's")
            .toolbar{
                ToolbarItem{
                    Button(action: {
                        showSheet = true
                    }){
                        Label("Add Button",systemImage: "plus")
                    }
                }
            }
            .sheet(isPresented: $showSheet){
                CreateTodoSheetView()
            }
        }
        .searchable(text: $searchText)
        
        var searchResult : [ToDoEntry]{
            if searchText.isEmpty{
                return toDoEntries
            }else{
                return toDoEntries.filter { $0.title.lowercased().contains(searchText.lowercased()) || $0.text.lowercased().contains(searchText.lowercased()) }
            }
        }
        
        
    }

    
    
}

#Preview {
    ToDoListView()
        .modelContainer(for: ToDoEntry.self, inMemory: true)
}
