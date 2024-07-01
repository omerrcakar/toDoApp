//
//  ToDoDetailView.swift
//  toDo
//
//  Created by ÖMER  on 30.06.2024.
//

import SwiftUI

struct ToDoDetailView: View {
    
    let toDo: ToDoEntry
    
    var body: some View {
    
        ScrollView {
            VStack(alignment: .leading) {
                HStack{
                    Text(toDo.date, style: .date)
                        .bold()
                    Text("-")
                    Text(String(repeating: "⭐️", count: Int(toDo.priorityRating)))
                    Spacer()
                }
                .padding(.bottom, 10)
                
                Text(toDo.text)
                    .bold()
                
            }
            .padding()
        }.navigationTitle(toDo.title)
        
    }
}

#Preview {
    NavigationStack {
        ToDoDetailView(toDo: ToDoEntry(title: "Deneme", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut faucibus lacus in blandit suscipit. Quisque tempor blandit velit non sodales. Donec lacinia venenatis est, eu fringilla lectus cursus eu. Donec aliquet ex lectus, ut cursus tortor semper non. Vestibulum lobortis nibh in faucibus consequat. Nam vitae ultrices odio. Sed dui tellus, accumsan ac quam a, iaculis commodo nisl. Etiam nibh tortor, malesuada sed dolor nec, condimentum molestie orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed vel luctus risusPhasellus semper augue ut feugiat efficitur. Nulla facilisi. Pellentesque sit amet bibendum odio. Duis placerat ipsum sit amet mi ultricies ultricies. Curabitur cursus tincidunt lorem, at varius metus consectetur eget. Duis sodales malesuada cursus. Nullam sit amet velit id massa pretium finibus in at odio. Donec lectus odio, consequat vitae ex in, dapibus pharetra sapien. Nulla vitae magna sed augue hendrerit consectetur id vitae urna. Quisque quis nibh auctor, fringilla dolor non, feugiat ex. Cras semper elementum ullamcorper. Etiam aliquet tempus sapien, eu cursus enim. Nunc ut euismod est, in lacinia elit. Praesent ex orci, consequat sit amet nisl et, egestas mollis nibh.Interdum et malesuada fames ac ante ipsum primis in faucibus. In a ligula laoreet, tincidunt risus non, scelerisque magna. Donec eget diam lorem. Integer ultricies tincidunt rutrum. Mauris vel facilisis dui. Vestibulum sed dui sem. Donec dignissim rhoncus libero, ut consectetur nibh sollicitudin in. Aenean in pharetra sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus porttitor ultricies eleifend. Quisque nunc sem, condimentum vitae tempus nec, sodales eu justo.", priorityRating: 5, date: Date()))
    }
}
