//
//  ExerciseView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 30.11.22.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    
    @State private var rating = 0
    @State private var showHistory = false
    @State private var showSuccess = false
    @Binding var selectedTab: Int
    
    //    let videoNames = ["strech", "run", "squat", "pushup", "abs", "plank"]
    //    let exerciseNames = ["Stretch", "Run", "Squat", "Pushup", "Abs", "Plank"]
    let index: Int
    let interval: TimeInterval = 30
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .topTrailing, endPoint: .bottomLeading).ignoresSafeArea()
            
            
            GeometryReader { geometry in
                VStack {
                    HeaderView(selectedTab: $selectedTab, titleText: Exercise.exercises[index].exerciseName)
                    if let url = Bundle.main.url(
                        forResource: Exercise.exercises[index].videoName,
                        withExtension: "mp4") {
                        VideoPlayer(player: AVPlayer(url: url))
                            .cornerRadius(5)
                            .frame(height: geometry.size.height * 0.29)
                            .padding(.vertical, 5)
                            .shadow(color: .blue, radius: 10, x: 0, y: 0)
                    } else {
                        Text("Couldn’t find \(Exercise.exercises[index].videoName).mp4")
                            .foregroundColor(.red)
                    }
                    
                    TimerView(timerDone: .constant(true))
                        .cornerRadius(5)
                        .shadow(color: .blue, radius: 1, x: 0, y: 0)
                        .padding(.top ,30)
                    
                    RatingView(rating: $rating)
                        .padding(.top, 5)
                    
                    HStack(spacing: 150) {
                        Button("Start") {}
                            .font(.title2)
                            .fontWeight(.black)
                            .padding()
                            .foregroundColor(.white)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .cornerRadius(40)
                            .padding(.top, 20)
                            .shadow(color: .blue, radius: 3, x: 0, y: 0)
                        Button("Done") {
                            if lastExercise {
                                showSuccess.toggle()
                            } else {
                                selectedTab += 1
                            }
                        }
                        .font(.title2)
                        .fontWeight(.black)
                        .padding()
                        .foregroundColor(.white)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .cornerRadius(40)
                        .padding(.top, 20)
                        .shadow(color: .blue, radius: 3, x: 0, y: 0)
                        
                        .sheet(isPresented: $showSuccess) {
                            SuccessView(selectedTab: $selectedTab)
                        }
                    }
                    
                    Button("History") {
                        showHistory.toggle()
                    }
                    .font(.title2)
                    .fontWeight(.heavy)
                    .padding(5)
                    .background(.secondary)
                    .cornerRadius(10)
                    .padding( .top, 130)
                    .sheet(isPresented: $showHistory) {
                        HistoryView(showHistory: $showHistory)
                    }
                }
            }
        }
    }
}


struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(selectedTab: .constant(3), index: 3)
    }
}
