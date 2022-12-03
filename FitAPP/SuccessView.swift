//
//  SuccessView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 03.12.22.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        ZStack {
        RadialGradient(gradient: Gradient(colors: [Color.black, Color.blue]), center:.center, startRadius: 20, endRadius: 550).ignoresSafeArea()
        VStack {
            Image(systemName: "hand.raised.fill")
                .font(.system(size: 100))
                .foregroundColor(Color.red)
            Text("High Five")
                .foregroundColor(.white)
                .font(.largeTitle)
                .bold()
            Text("Good job for completing all six exercises! Remember tomorrow's nother day. So eat well and get some rest!")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .padding(.leading, 40)
                .padding(.trailing, 40)
            
        }
    }
}
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}

