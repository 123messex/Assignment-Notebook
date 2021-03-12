//
//  AddView.swift
//  Assignment Notebook
//
//  Created by Student on 3/12/21.
//

import SwiftUI
struct AddView: View {
    @ObservedObject var assignmentList: AssignmentList
    @State private var course = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
    static let courses = ["Studies in lit and film", "Math 101", "Advanced Earth Science", "Mobile App dev",
                          "Sociology"]
    var body: some View {
        NavigationView {
            Form {
                Picker("Course", selection: $course) {
                    ForEach(Self.courses, id: \.self) { course in
                        Text(course)
                    }
                }
                TextField("Description", text: $description)
                DatePicker("Due Date", selection: $dueDate,
                           
                           displayedComponents: .date)
                
            }
            .navigationBarTitle("Add New Assignment")
            .navigationBarItems(trailing: Button("Save") {
                if course.count > 0 && description.count > 0 {
                    let item = Assignment(id: UUID(), course: course,
                                          description: description, dueDate: dueDate)
                    
                    assignmentList.items.append(item)
                    presentationMode.wrappedValue.dismiss()
                }
            })
        }
    }
}
struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(assignmentList: AssignmentList())
    }
}
