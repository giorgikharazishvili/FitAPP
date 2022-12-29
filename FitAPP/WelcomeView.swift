//
//  WelcomeView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 30.11.22.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showHistory = false
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.black, Color.blue]), center:.center, startRadius: 20, endRadius: 550).ignoresSafeArea()
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: "Welcome")
                    .foregroundColor(.white)
                
                Spacer()
                Button("History") {
                    showHistory.toggle()
                }
                .font(.title2)
                .fontWeight(.heavy)
                .padding(5)
                .background(.secondary)
                .cornerRadius(10)
                .padding( .top, 100)
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
                
                    
            }
            VStack {
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("Get Fit")
                            .font(.largeTitle)
                            .padding(.bottom)
                        Text("How to become healthy and fit?")
                            .font(.headline)
                            .italic()
                            .foregroundColor(.yellow)
                    }
                    .padding(.bottom )
                    .padding(.leading)
                    
                    Image("fit")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250, alignment: .trailing)
                        .clipShape(Circle())
                }
                
                Button(action: { selectedTab = 0 }) {
                    Text("Get Started")
                    Image(systemName: "arrow.right.circle")
                }
                .padding()
                .font(.title2)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 3)
                )
                
            }
            .foregroundColor(.white)
            //.background(.red)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(selectedTab: .constant(9))
    }
}
