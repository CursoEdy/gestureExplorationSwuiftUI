//
//  DragGestureDemo.swift
//  GestureExploration
//
//  Created by ednardo alves on 03/11/24.
//

import SwiftUI

struct DragGestureDemo: View {
    @State private var currentOffset: CGSize = .zero
    @State private var endOffset: CGSize = .zero
    
    var offset: CGSize {
        CGSize(
            width: currentOffset.width + endOffset.width,
            height: currentOffset.height + endOffset.height)
    }
    
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
                .offset(offset)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()){
                                currentOffset = value.translation
                            }
                        }
                        .onEnded { _ in
                            withAnimation(.spring()){
                                endOffset = CGSize(
                                    width: currentOffset.width + endOffset.width,
                                    height: currentOffset.height + endOffset.height
                                )
                                
                                //reset currentOffset
                                currentOffset = .zero
                            }
                        }
                )
                .onTapGesture {
                    withAnimation(.spring()){
                        currentOffset = .zero
                        endOffset = .zero
                    }
                }
                
                Spacer()
            }
            
            .navigationTitle("Drag and bound back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DragGestureDemo()
}
