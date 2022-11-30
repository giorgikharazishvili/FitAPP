//
//  ExerciseView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 30.11.22.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    
    let videoNames = ["strech", "run", "squat", "pushup", "abs", "plank"]
    let exerciseNames = ["Stretch", "Run", "Squat", "Pushup", "Abs", "Plank"]
    let index: Int
    
    var body: some View {
        VStack {
            HeaderView(exerciseName: exerciseNames[index])
            if let url = Bundle.main.url(
                forResource: videoNames[index],
                withExtension: "mp4") {
                VideoPlayer(player: AVPlayer(url: url))
            } else {
                Text("Couldn’t find \(videoNames[index]).mp4")
                .foregroundColor(.red)
            }
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
