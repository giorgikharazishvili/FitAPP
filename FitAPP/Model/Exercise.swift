//
//  Exercise.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 03.12.22.
//

import Foundation

struct Exercise {
    let exerciseName: String
    let videoName: String
    
    enum ExerciseEnum: String {
        case strech = "Strech"
        case run = "Run"
        case squat = "Squat"
        case pushup = "Pushup"
        case abs = "Abs"
        case plank = "Plank"
    }
}

extension Exercise {
    static let exercises = [
        Exercise(
            exerciseName: ExerciseEnum.strech.rawValue, videoName: "strech"),
        
        Exercise(
            exerciseName: ExerciseEnum.run.rawValue, videoName: "run"),
        
        Exercise(
            exerciseName: ExerciseEnum.squat.rawValue, videoName: "squat"),
        
        Exercise(
            exerciseName: ExerciseEnum.pushup.rawValue, videoName: "pushup"),
        
        Exercise(
            exerciseName: ExerciseEnum.abs.rawValue, videoName: "abs"),
        
        Exercise(
            exerciseName: ExerciseEnum.plank.rawValue, videoName: "plank")
    ]
}
