//
//  HeaderView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 30.11.22.
//

import SwiftUI

struct HeaderView: View {
    let exerciseName: String
    var body: some View {
        VStack {
            Text(exerciseName)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .fontWeight(.heavy)
                .foregroundColor(Color.red)
            HStack {
                Image(systemName: "hands.sparkles.fill")
                    .foregroundColor(Color.red)
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .font(.title2)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(exerciseName: "Stretch")
                .previewLayout(.sizeThatFits)
//            HeaderView(exerciseName: "Stretch")
//                .previewLayout(.sizeThatFits)
        }
    }
}
