//
//  HistoryStoreDevData.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 03.12.22.
//

import Foundation

extension HistoryStore {
    func createDevData() {
        exerciseDays = [
            ExerciseDay(
                date: Date().addingTimeInterval(-86400),
                exercises: [
                    Exercise.exercises[0].exerciseName,
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[2].exerciseName
                ]),
            ExerciseDay(
                date: Date().addingTimeInterval(-86400 * 2),
                exercises: [
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[0].exerciseName
                ]),
            ExerciseDay(
                date: Date().addingTimeInterval(-86400 * 3),
                exercises: [
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[0].exerciseName,
                    Exercise.exercises[2].exerciseName,
                    Exercise.exercises[4].exerciseName
                ])
        ]
    }
}
