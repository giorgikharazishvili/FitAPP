//
//  HistoryStore.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 03.12.22.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
    
    init() {
     // #if DEBUG
      createDevData()
     // #endif
    }
}



