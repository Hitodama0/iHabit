//
//  ContentView.swift
//  iHabit
//
//  Created by Biagio Ricci on 08/02/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var habits = Habits()
    @State private var addNewHabit = false
    var body: some View {
        NavigationView{
            List {
                ForEach(habits.items) {
                    habit in NavigationLink{
                        HabitView(habit: habit, habits: habits)
                    } label: {
                        HStack{
                            Text(habit.title)
                                .foregroundColor(.random)
                            Spacer()
                            Text(habit.times, format: .number)
                        }
                    }
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iHabit")
            .toolbar {
                Button {
                    addNewHabit = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $addNewHabit){
                AddView(habits: habits)
            }
        }
    }
    func removeItems(at offsets: IndexSet) {
        habits.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
