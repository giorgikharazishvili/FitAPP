//  TimerView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 30.12.22.
//

import SwiftUI

struct TimerView: View {
    @State private var timeRemaining = 30
    @Binding var timerDone: Bool
    let timer = Timer.publish(
        every: 1,
        on: .main,
        in: .common)
        .autoconnect()
    var body: some View {
        Text("\(timeRemaining)")
            .padding(.leading, 30)
            .padding(.trailing, 30)
            .font(.system(size: 60))
            .foregroundColor(.white)
            .font(.largeTitle)
            .fontWeight(.bold)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .topLeading, endPoint: .bottomLeading)
            )
            .cornerRadius(5)
            .shadow(color: .blue, radius: 5, x: 0, y: 0)
            .onReceive(timer) { _ in
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1
                } else {
                    timerDone = true
                }
            }
    }
}
struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(timerDone: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
