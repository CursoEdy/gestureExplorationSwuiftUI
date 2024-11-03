//
//  MagnificationStoreStateView.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct MagnificationStoreStateView: View {
    @Binding var scaleEfect: CGFloat
    
    var body: some View {
            VStack {
                Spacer()
                
                NiceTextView(
                    text: "Hello, world!",
                    bgColor: .blue,
                    fgColor: .white,
                    radius: 10)
                    .scaleEffect(scaleEfect)
                    .gesture(
                        MagnificationGesture()
                            .onChanged { value in
                                withAnimation(.spring()) {
                                    scaleEfect = value
                                }
                            }
                    )
                
                Spacer()
            }
            .navigationTitle("Magnify and Store State")
            .navigationBarTitleDisplayMode(.inline)
        
    }
}


#Preview {
    MagnificationStoreStateView(scaleEfect: .constant(1.0))
}
