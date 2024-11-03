//
//  MagnificationDemo.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct MagnificationDemo: View {
    var body: some View {
        
        NavigationStack {
            Form {
                MagnificationSectionView()
            }
            .navigationTitle("Gesture Exploration")
        }
    }
}

#Preview {
    MagnificationDemo()
}
