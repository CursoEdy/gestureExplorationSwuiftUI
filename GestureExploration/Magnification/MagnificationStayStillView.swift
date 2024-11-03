//
//  MagnificationView.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct MagnificationStayStillView: View {
    @State private var scaleEfect: CGFloat = 1.5
    
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
            .navigationTitle("Magnify and Stay Still")
            .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    MagnificationStayStillView()
}
