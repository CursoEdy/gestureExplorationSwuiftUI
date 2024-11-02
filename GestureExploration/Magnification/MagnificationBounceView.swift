//
//  MagnificationBounceView.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct MagnificationBounceView: View {
    
    @State private var scaleEfect: CGFloat = 1.5
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                NiceTextView(text: "Hello, world!", bgColor: .blue, fgColor: .white, radius: 10)
                    .scaleEffect(scaleEfect)
                    .gesture(
                        MagnificationGesture()
                            .onChanged { value in
                                withAnimation(.spring()) {
                                    scaleEfect = value
                                }
                            }
                            .onEnded { value in
                                withAnimation(.spring()) {
                                    scaleEfect = 1.0
                                }
                            }
                
                    )
                
                Spacer()
            }
            .navigationTitle("Magnification Bounce")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    MagnificationBounceView()
}
