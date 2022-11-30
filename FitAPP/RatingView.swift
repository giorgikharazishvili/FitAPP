//
//  ByeView.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 30.11.22.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            ForEach(0..<5) { item in
                Image(systemName: "waveform.path.ecg")
            }
        }
        .foregroundColor(.gray)
        .font(.largeTitle)
        .fontWeight(.heavy)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
            .previewLayout(.sizeThatFits)
    }
}
