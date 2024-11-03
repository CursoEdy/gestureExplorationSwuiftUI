//
//  GestureGestureBounceBack.swift
//  GestureExploration
//
//  Created by ednardo alves on 03/11/24.
//

import SwiftUI

struct DragsGestureBounceBack: View {
    @State private var ofset: CGSize = .zero
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Squares()
                Spacer()
                NiceTextView(
                    text: "Drags Gesture Bounce Back",
                    bgColor: .red.opacity(0.5),
                    fgColor: .white,
                    radius: 15)
                .offset(ofset)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                                ofset = value.translation
                        }
                        .onEnded { _ in
                            withAnimation(.spring()){
                                ofset = .zero
                            }
                        }
                )
                
                Spacer()
            }
            
            .navigationTitle("Drag and bound back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DragsGestureBounceBack()
}
