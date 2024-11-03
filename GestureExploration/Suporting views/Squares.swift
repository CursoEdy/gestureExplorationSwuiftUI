//
//  Squares.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct Squares: View {
    
    let opacity: CGFloat
    
    init(opacity: CGFloat = 0.85) {
        self.opacity = opacity
    }
    
    var body: some View {
        
        Grid {
            SquareRow(colors: [.red, .blue, .brown] )
            SquareRow(colors: [.cyan, .black, .green])
            SquareRow(colors: [.yellow, .purple, .pink])
        }
        .opacity(opacity)
    }
}

#Preview {
    Squares()
}
