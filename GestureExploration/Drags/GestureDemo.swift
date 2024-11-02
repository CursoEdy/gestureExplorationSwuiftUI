//
//  GestureDemo.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct GestureDemo: View {
    var body: some View {
        Form {
            Text("Magnification")
                .font(.title2)
            Text("Drags!")
                .font(.title2)
            Text("Rotation")
                .font(.title2)
            Text("General")
                .font(.title2)
        }
        .cornerRadius(15)
    }
}

#Preview {
    GestureDemo()
}
