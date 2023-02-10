//
//  AddView.swift
//  iHabit
//
//  Created by Biagio Ricci on 08/02/23.
//

import PhotosUI
import SwiftUI

struct AddView: View {
    @ObservedObject var habits: Habits
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var description = ""
    @State private var times = 0
    var body: some View {
        NavigationView{
            Form{
                TextField("Title", text: $title)
                TextField("Description", text: $description)
                TextField("How many times", value: $times, format: .number)
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add a new habit")
            .toolbar {
                Button("Save") {
                    let item = HabitItem(title: title, description: description, times: times)
                    habits.items.append(item)
                    dismiss()
                }
            }
        }
    }
}


/*struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(habits: Habits())
    }
}
*/
