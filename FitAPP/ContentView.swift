//
//  ContentView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 30.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
            ForEach(0..<5) { number in
                ExerciseView(index: number)
            }
            Text("Exercise2")
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
