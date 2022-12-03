//
//  WelcomeView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 30.11.22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.black, Color.blue]), center:.center, startRadius: 20, endRadius: 550).ignoresSafeArea()
            VStack {
                HeaderView(titleText: "Welcome")
                    .foregroundColor(.white)
                Spacer()
                Button("History") {}
                    .padding(.bottom)
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(.white)
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
                
                Button(action: {} ) {
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
        WelcomeView()
    }
}
