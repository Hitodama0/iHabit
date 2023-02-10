//
//  HabitView.swift
//  iHabit
//
//  Created by Biagio Ricci on 08/02/23.
//

import SwiftUI

struct HabitView: View {
    var habit: HabitItem
    @ObservedObject var habits: Habits
    var body: some View {
        VStack{
            Text(habit.title)
                .font(.title)
                .padding()
            Text(habit.description)
                .font(.body)
                .padding()
            HStack{
                Text("\(habit.times) times")
                    .font(.title3)
                Button("+") {
                    var newHabit = habit
                    newHabit.times += 1
                    let index = habits.items.firstIndex(of: habit)
                    habits.items[index ?? 0] = newHabit
                }
                .buttonStyle(.bordered)
                
                Button("-") {
                    var newHabit = habit
                    newHabit.times -= 1
                    let index = habits.items.firstIndex(of: habit)
                    habits.items[index ?? 0] = newHabit
                }
                .buttonStyle(.bordered)
            }
        }
    }
}

/*struct HabitView_Previews: PreviewProvider {
 static var previews: some View {
 HabitView()
 }
 }*/
