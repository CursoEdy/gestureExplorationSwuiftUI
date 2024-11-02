//
//  MagnificationSectionView.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct MagnificationSectionView: View {
    var body: some View {
        
        Section(content: {
            
            NavigationLink(#"Magnification Gesture "Go back""#, destination: {
                Text("Exemplo 02")
            })
            
            NavigationLink(#"Magnification Gesture "Stay Still""#, destination: {
                Text("Exemplo 01")
            })
            
            NavigationLink(destination: {
                Text("Exemplo 03")
            }, label: {
                VStack (alignment: .leading) {
                    Text("Magnification Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                }
            })
            
            
        }, header: {
            Text("Magnification Gesture Demo")
                .font(.headline)
        })
    }
}

#Preview {
    Form {
        MagnificationSectionView()
    }
}
