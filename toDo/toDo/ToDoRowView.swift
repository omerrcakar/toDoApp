//
//  ToDoRowView.swift
//  toDo
//
//  Created by ÖMER  on 1.07.2024.
//

import SwiftUI

struct ToDoRowView: View {
    
    let toDo:ToDoEntry
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text(toDo.title)
                    .bold()
                Text("-")
                Text(toDo.text)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 2)
            
            HStack{
                Text(toDo.date, style: .date)
                    .foregroundStyle(.red)
                Text(String(repeating: "⭐️", count: Int(toDo.priorityRating)))
            }
            .font(.callout)
        }
    }
}

#Preview {
    
    List {
        ToDoRowView(toDo: ToDoEntry(title: "Başlık", text: "açıklama", priorityRating: 4, date: Date()))
    }
}
