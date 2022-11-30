//
//  ExerciseView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 30.11.22.
//

import SwiftUI

struct ExerciseView: View {
    
    let videoNames = ["strech", "run", "squat", "pushup", "abs", "plank"]
    let exerciseNames = ["Stretch", "Run", "Squat", "Pushup", "Abs", "Plank"]
    let index: Int
    
    var body: some View {
        VStack {
            HeaderView(exerciseName: exerciseNames[index])
            Text("Video player")
            Text("Timer")
            Text("Start/Done button")
            Text("Rating")
            Text("History button")
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}
