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
            Text(habit.description)
            HStack{
                Text("\(habit.times)")
                Button("+") {
                    var newHabit = habit
                    newHabit.times += 1
                    let index = habits.items.firstIndex(of: habit)
                    habits.items[index ?? 0] = newHabit
                }
                
                Button("-") {
                    var newHabit = habit
                    newHabit.times -= 1
                    let index = habits.items.firstIndex(of: habit)
                    habits.items[index ?? 0] = newHabit
                }
            }
        }
    }
}

/*struct HabitView_Previews: PreviewProvider {
 static var previews: some View {
 HabitView(habit: ha)
 }
 }*/
