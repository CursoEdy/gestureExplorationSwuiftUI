//
//  SquareRow.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct SquareRow: View {
    
    let colors: [Color]
    let dim: CGFloat
    let cornerRadius: CGFloat
    
    init(colors: [Color], dim: CGFloat = 50, cornerRadius: CGFloat = 10.0) {
        self.colors = colors
        self.dim = dim
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        GridRow {
            ForEach(colors, id: \.self) { color in
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(color)
                    .frame(width: dim, height: dim)
            }
        }
    }
}

struct BackgroundColor: View {
    
    let colors: [Color]
    let opacity: CGFloat
    
    init(colors: [Color], opacity: CGFloat = 0.5) {
        self.colors = colors
        self.opacity = opacity
    }
    
    var body: some View {
        LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(opacity)
            .ignoresSafeArea()
    }
}

#Preview {
    ZStack {
        BackgroundColor(colors: [.clear, .cyan, .yellow, .orange])
        Grid {
            ForEach(0..<7) { i in
                SquareRow(colors: [ .red, .blue, .green],
                          dim: CGFloat(i) * 5.0
                )
            }
            ForEach(0..<7) { i in
                SquareRow(colors: [ .red, .blue, .green],
                          dim: CGFloat(7-i) * 5.0
                )
            }
        }
    }
}
