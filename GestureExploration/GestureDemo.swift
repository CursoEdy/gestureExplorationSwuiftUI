//
//  GestureDemo.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct GestureDemo: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationSectionView()
            }
            .navigationTitle("Gestures")
        }
    }
}

#Preview {
    GestureDemo()
}
