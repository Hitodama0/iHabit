//
//  HabitItem.swift
//  iHabit
//
//  Created by Biagio Ricci on 08/02/23.
//

import Foundation

struct HabitItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let title: String
    let description: String
    var times: Int = 0
}
