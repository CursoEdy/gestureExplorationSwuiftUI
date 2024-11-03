//
//  MagnificationSectionView.swift
//  GestureExploration
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct MagnificationSectionView: View {
    
    @State private var scaleEffect: CGFloat = 1.0
    
    var body: some View {
        
        Section(content: {
            
            NavigationLink(#"Magnification Gesture "Go back""#, destination: {
                MagnificationBounceBackView()
            })
            
            NavigationLink(#"Magnification Gesture "Stay Still""#, destination: {
                MagnificationStayStillView()
            })
            
            NavigationLink(destination: {
                MagnificationStoreStateView(scaleEfect: $scaleEffect)
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
