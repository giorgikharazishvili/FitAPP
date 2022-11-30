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
    let interval: TimeInterval = 30
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .topTrailing, endPoint: .bottomLeading).ignoresSafeArea()
            
            GeometryReader { geometry in
                VStack {
                    HeaderView(exerciseName: exerciseNames[index])
                    if let url = Bundle.main.url(
                        forResource: videoNames[index],
                        withExtension: "mp4") {
                        VideoPlayer(player: AVPlayer(url: url))
                            .cornerRadius(20)
                            .frame(height: geometry.size.height * 0.29)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 2)
                            .shadow(color: .gray, radius: 20, x: 0, y: 0)
                    } else {
                        Text("Couldn’t find \(videoNames[index]).mp4")
                            .foregroundColor(.red)
                    }
                    
                    Text(Date().addingTimeInterval(interval), style: .relative)
                        .padding(10)
                        .font(.system(size: 60))
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .topLeading, endPoint: .bottomLeading)
                        )
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 5, x: 0, y: 0)
                        .padding(.top, 20)
                    
                    
                    RatingView()
                        .padding(.top, 20)
                    
                    Button("Start / Done") {}
                        .font(.title)
                        .fontWeight(.black)
                        .padding()
                        .foregroundColor(.white)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [Color.black, Color.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .cornerRadius(40)
                        .padding(.top, 20)
                        .shadow(color: .gray, radius: 15, x: 0, y: 0)
                
                        Button("History") {}
                            .font(.title2)
                            .fontWeight(.heavy)
                            .padding(5)
                            .foregroundColor(.white)
                            .background(.black)
                            .shadow(color: .gray, radius: 10, x: 0, y: 0)
                            .cornerRadius(10)
                            .padding( .top, 50)
                }
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}
