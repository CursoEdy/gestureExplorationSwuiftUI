//
//  NiceTextView.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct NiceTextView: View {
    
    let text: String
    let bgColor: Color
    let fgColor: Color
    let radius: CGFloat
    
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.thin)
            .foregroundStyle(fgColor)
            .padding()
            .background(bgColor)
            .clipShape(.rect(cornerRadius: radius))
    }
}

#Preview {
    NiceTextView(
        text: "Hello, World!",
        bgColor: Color.blue,
        fgColor: Color.white,
        radius: 10.0)
}
