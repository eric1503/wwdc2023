//
//  CardView.swift
//  tiktok
//
//  Created by Eric Angelo on 10/04/23.
//

import SwiftUI

struct CardView: View {
    
    let text: String
    let color: Color

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                .shadow(radius: 5)
            Text(text)
                .foregroundColor(.white)
                .font(.system(size: 48, weight: .bold, design: .default))
                .padding()
        }
        .padding(.all)
    }
}
