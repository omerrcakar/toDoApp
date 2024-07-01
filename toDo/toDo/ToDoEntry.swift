//
//  ToDoEntry.swift
//  toDo
//
//  Created by ÖMER  on 30.06.2024.
//

import Foundation
import SwiftData

// @Model : this class save on SwiftData -> you can pull things out , edit and delete them
// tüm bu özellikler bu @Model ile sağlanır

// final parametresi : kullanılan sınıfın overriding ve miras alınma gibi özellikleri geçersiz kılar.
// final anahtar kelimesi, derleyiciye sınıfın alt sınıflarının olmayacağını söyler

// Item objesini kullanmak için appfile da belirtmeyi unutma

@Model
final class ToDoEntry{
    
    var title: String = ""
    var text: String = ""
    var priorityRating: Double = 1.0
    var date: Date = Date()
    
    init(title: String, text: String, priorityRating: Double, date: Date) {
        self.title = title
        self.text = text
        self.priorityRating = priorityRating
        self.date = date
    }
    
}

var toDoEntries: [ToDoEntry] = [
    ToDoEntry(title: "First job day", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nulla ligula, condimentum eu odio in, hendrerit eleifend nisi. Phasellus lacus mi, ornare quis velit nec, placerat varius nulla. Phasellus ac dignissim nunc. Sed ut mi eu lorem tincidunt pellentesque. ", priorityRating: 4, date: Date()),
    ToDoEntry(title: "Daily language learning", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nulla ligula, condimentum eu odio in, hendrerit eleifend nisi. Phasellus lacus mi, ornare quis velit nec, placerat varius nulla. Phasellus ac dignissim nunc. Sed ut mi eu lorem tincidunt pellentesque. ", priorityRating: 2, date: Date()),
    ToDoEntry(title: "Fitness", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nulla ligula, condimentum eu odio in, hendrerit eleifend nisi. Phasellus lacus mi, ornare quis velit nec, placerat varius nulla. Phasellus ac dignissim nunc. Sed ut mi eu lorem tincidunt pellentesque. ", priorityRating: 1, date: Date()),
    ToDoEntry(title: "Cooking something", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nulla ligula, condimentum eu odio in, hendrerit eleifend nisi. Phasellus lacus mi, ornare quis velit nec, placerat varius nulla. Phasellus ac dignissim nunc. Sed ut mi eu lorem tincidunt pellentesque. ", priorityRating: 5, date: Date()),
]
