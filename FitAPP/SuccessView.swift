//
//  SuccessView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 03.12.22.
//

import SwiftUI

struct SuccessView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.black, Color.blue]), center:.center, startRadius: 20, endRadius: 550).ignoresSafeArea()
            
            VStack {
                Image(systemName: "hand.raised.fill")
                    .font(.system(size: 200))
                    .foregroundColor(Color.red)
                Text("High Five")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                Text("Good job for completing all six exercises! Remember tomorrow's nother day. So get some rest, eat well and get ready!")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                Button("Go Ahead") {
                    presentationMode.wrappedValue.dismiss()
                    selectedTab = 9
                }
                .font(.title2)
                .fontWeight(.heavy)
                .padding(5)
                .background(.secondary)
                .cornerRadius(10)
                .padding( .top, 10)
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(selectedTab: .constant(3))
    }
}

